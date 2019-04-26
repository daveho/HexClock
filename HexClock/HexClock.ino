#include <stdint.h>
#include <RTClib.h>

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

// TODO: need to define variable for segment cathode outputs
uint8_t DIGIT_OUT;



// Update the LED displays based on current hours and minute
void update_display() {
  static uint8_t update_count;

  // Each time update_display() is called, one LED display
  // is driven with the appropriate digit (and the other
  // displays are turned off.)
  uint8_t which = update_count & 0x3;
  uint8_t val;
  switch (which) {
  case 0: // left high
    val = (PINC >> 4) & 0x0f;
    PORTB = ~1;
    DIGIT_OUT = g_hexfont[val];
    break;
  case 1: // left low
    val = PINC & 0x0f;
    PORTB = ~2;
    DIGIT_OUT = g_hexfont[val];
    break;
  case 2: // right high
    val = (PIND >> 4) & 0x0f;
    PORTB = ~4;
    DIGIT_OUT = g_hexfont[val];
    break;
  case 3: // right low
    val = PIND & 0x0f;
    PORTB = ~8;
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

  update_time(rtc.now());
}

void loop() {
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
