#include <stdint.h>
#include <RTClib.h>
#include <Bounce2.h>

//**********************************************************************
// Constant data
//**********************************************************************

// Bits for display segments
#define SEG_A (1<<0)
#define SEG_B (1<<1)
#define SEG_C (1<<2)
#define SEG_D (1<<3)
#define SEG_E (1<<4)
#define SEG_F (1<<5)
#define SEG_G (1<<6)

// Bit patterns for hex digits 0-9, A-F.
// They are negated because the high-side PNP transistors
// driving the segments are turned on with a low voltage.
const uint8_t g_hexfont[16] = {
  (uint8_t) ~(SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F),
  (uint8_t) ~(SEG_B|SEG_C),
  (uint8_t) ~(SEG_A|SEG_B|SEG_D|SEG_E|SEG_G),
  (uint8_t) ~(SEG_A|SEG_B|SEG_C|SEG_D|SEG_G),
  (uint8_t) ~(SEG_B|SEG_C|SEG_F|SEG_G),
  (uint8_t) ~(SEG_A|SEG_C|SEG_D|SEG_F|SEG_G),
  (uint8_t) ~(SEG_A|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G),
  (uint8_t) ~(SEG_A|SEG_B|SEG_C),
  (uint8_t) ~(SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G),
  (uint8_t) ~(SEG_A|SEG_B|SEG_C|SEG_F|SEG_G),
  (uint8_t) ~(SEG_A|SEG_B|SEG_C|SEG_E|SEG_F|SEG_G),
  (uint8_t) ~(SEG_C|SEG_D|SEG_E|SEG_F|SEG_G),
  (uint8_t) ~(SEG_D|SEG_E|SEG_G),
  (uint8_t) ~(SEG_B|SEG_C|SEG_D|SEG_E|SEG_G),
  (uint8_t) ~(SEG_A|SEG_D|SEG_E|SEG_F|SEG_G),
  (uint8_t) ~(SEG_A|SEG_E|SEG_F|SEG_G),
};

// Port D (digital pins 0..7) drives the segment cathodes
#define DIGIT_OUT  PORTD
#define DIGIT_DDR  DDRD

// The 4 lowest bits of port B (digital pins 8..11) 
// drive the common anodes
#define CA_OUT     PORTB
#define CA_DDR     DDRB

// Digital pins used for buttons
#define SET_BTN    11
#define HOUR_BTN   13
#define MINUTE_BTN 14

//**********************************************************************
// Global variables
//**********************************************************************

// Variables for the time display
uint8_t g_hour;
uint8_t g_minute;

volatile uint16_t g_count;

// The RTC object (from RTClib)
RTC_DS1307 rtc;

//**********************************************************************
// Functions
//**********************************************************************

// Update the LED displays based on current hours and minute
void update_display() {
  static uint8_t update_count;

  // Each time update_display() is called, one LED display
  // is driven with the appropriate digit (and the other
  // displays are turned off.)
  uint8_t which = update_count & 0x3;
  uint8_t val;
  switch (which) {
  case 0: // high digit of hour
    val = (g_hour >> 4) & 0x0F;
    CA_OUT = (~1) & 0x0F;
    DIGIT_OUT = g_hexfont[val];
    break;
  case 1: // low digit of hour
    val = g_hour & 0x0F;
    CA_OUT = (~2) & 0x0F;
    DIGIT_OUT = g_hexfont[val];
    break;
  case 2: // high digit of minute
    val = (g_minute >> 4) & 0x0F;
    CA_OUT = (~4) & 0x0F;
    DIGIT_OUT = g_hexfont[val];
    break;
  case 3: // low digit of minute
    val = g_minute & 0x0F;
    CA_OUT = (~8) & 0x0F;
    DIGIT_OUT = g_hexfont[val];
    break;
  }
  update_count++;
}

// Timer interrupt handler, called once per millisecond
SIGNAL(TIMER0_COMPA_vect) {
  uint16_t tick = g_count;
  g_count = tick + 1;

  // Update the LED displays periodically (at 250 Hz,
  // which because we are driving the LED displays at
  // 1/4 duty, means they are updated at 62.5 Hz individually)
  if (((tick + 3) & 0x3) == 0) {
    update_display();
  }
}

void update_time(DateTime now) {
  g_hour = now.hour();
  g_minute = now.minute();
}

void check_time() {
  DateTime now = rtc.now();
  if (g_hour != now.hour() || g_minute != now.minute()) {
    update_time(now);
    g_count = 0; // reset counter so RTC reads will be deferred about 1 minute
  }
}

void setup() {
  // put your setup code here, to run once:

  // All bits of DIGIT_OUT are configured as outputs
  DIGIT_DDR = 0xFF;

  // The low 4 bits of CA_OUT are configured as outputs.
  CA_DDR = 0x0F;

  // Configure button inputs
  pinMode(SET_BTN, INPUT_PULLUP);
  pinMode(HOUR_BTN, INPUT_PULLUP);
  pinMode(MINUTE_BTN, INPUT_PULLUP);

  while (!rtc.begin()) {
    // Couldn't find RTC?
  }

  // Initialize display variables
  g_hour = 0;
  g_minute = 0;

  // Count variable: determines when we check for hour/minute
  // change.  Idea is to avoid unnecessary communication with
  // the RTC.

  // Add a timer interrupt handler to be fired once per millisecond.
  // See: https://learn.adafruit.com/multi-tasking-the-arduino-part-2/timers
  OCR0A = 0xAF;
  TIMSK0 |= _BV(OCIE0A);

  // Set the time according to the RTC
  update_time(rtc.now());
}

void loop() {
  // Button states
  uint8_t set_btn_pressed;
  uint8_t hour_btn_pressed;
  uint8_t minute_btn_pressed;
  
  for (;;) {
    // The idea is to wait very close to 1 minute for
    // changes to the hour and minute.  The counter will
    // reset to 0 when an hour and/or minute change is
    // detected.
    uint16_t tick = g_count;
    if (tick >= 59936 && (tick & 0xF) == 0) {
      check_time();
    }
  }
}
