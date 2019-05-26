#include <stdint.h>
#include <RTClib.h>
#include <Bounce2.h>

//**********************************************************************
// Constant data
//**********************************************************************

// Bits for display segments
#define SEG_A  (1<<0)
#define SEG_B  (1<<1)
#define SEG_C  (1<<2)
#define SEG_D  (1<<3)
#define SEG_E  (1<<4)
#define SEG_F  (1<<5)
#define SEG_G  (1<<6)
#define SEG_DP (1<<7)

// Bit patterns for hex digits 0-9, A-F.
// They are negated because the LED displays are common anode
// and the segments are turned on with a low voltage applied
// to the cathodes.
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

// Common anode control pins
const uint8_t CA_PINS[] = { 8, 9, 10, 12 };

// Timing delay: should be 1 ms
#define TIMING_DELAY_MS 1

// States for when the set button is pressed
enum {
  // Set is not pressed
  SET_NOT_PRESSED=0,
  // Set is pressed, and hour/minute have not be pressed
  SET_PRESSED,
  // Set is pressed, but hour and/or minute buttons have been
  // pressed to set the time
  SET_HR_MIN_CHANGED,
  // Set was pressed for long enough that a mode change occurred,
  // and now hour/minute changes will be ignored
  SET_MODE_CHANGED,
};

// If set is pressed for this many milliseconds, change the display mode
#define DISPLAY_MODE_CHANGE_MS 3000

//**********************************************************************
// Global variables
//**********************************************************************

// Variables for the time display
volatile uint8_t g_hour;
volatile uint8_t g_minute;

// Used for timing in the main loop
uint16_t count = 0;

// The RTC object (from RTClib)
RTC_DS1307 rtc;

// Debouncing of pushbuttons
Bounce set_btn, hour_btn, minute_btn;

// State of 2nd display decimal point, which blinks
// on/off at about .5 Hz.
uint8_t blinker;

// Display mode: 0=hex, 1=dec
uint8_t display_mode;

// State associated with set button presses
uint8_t set_state;

// Counter that increments while set is pressed
uint16_t set_count;

// Display update count (for multiplexing)
static uint8_t update_count;

//**********************************************************************
// Functions
//**********************************************************************

// Update the LED displays based on current hour and minute
void update_display() {
  // Each time update_display() is called, one LED display
  // is driven with the appropriate digit (and the other
  // displays are turned off.)
  uint8_t which = update_count & 0x3;
  uint8_t val;
  switch (which) {
  case 0: // high digit of hour
    val = (g_hour >> 4) & 0x0F;
    digitalWrite(CA_PINS[3], HIGH);
    digitalWrite(CA_PINS[0], LOW);
    DIGIT_OUT = g_hexfont[val];
    break;
  case 1: // low digit of hour
    val = g_hour & 0x0F;
    digitalWrite(CA_PINS[0], HIGH);
    digitalWrite(CA_PINS[1], LOW);
    DIGIT_OUT = g_hexfont[val] & (blinker ? ~SEG_DP : 0xFF);
    break;
  case 2: // high digit of minute
    val = (g_minute >> 4) & 0x0F;
    digitalWrite(CA_PINS[1], HIGH);
    digitalWrite(CA_PINS[2], LOW);
    DIGIT_OUT = g_hexfont[val];
    break;
  case 3: // low digit of minute
    val = g_minute & 0x0F;
    digitalWrite(CA_PINS[2], HIGH);
    digitalWrite(CA_PINS[3], LOW);
    DIGIT_OUT = g_hexfont[val];
    break;
  }
  update_count++;
}

uint8_t high_digit(uint8_t x) {
  uint8_t count = 0;
  while (x >= 10) {
    count++;
    x -= 10;
  }
  return count;
}

uint8_t low_digit(uint8_t x) {
  while (x >= 10) {
    x -= 10;
  }
  return x;
}

void update_display_dec() {
  uint8_t which = update_count & 0x3;
  uint8_t val;
  switch (which) {
    case 0:
      val = high_digit(g_hour);
      digitalWrite(CA_PINS[3], HIGH);
      digitalWrite(CA_PINS[0], LOW);
      DIGIT_OUT = g_hexfont[val];
      break;
    case 1:
      val = low_digit(g_hour);
      digitalWrite(CA_PINS[0], HIGH);
      digitalWrite(CA_PINS[1], LOW);
      DIGIT_OUT = g_hexfont[val] & (blinker ? ~SEG_DP : 0xFF);
      break;
    case 2:
      val = high_digit(g_minute);
      digitalWrite(CA_PINS[1], HIGH);
      digitalWrite(CA_PINS[2], LOW);
      DIGIT_OUT = g_hexfont[val];
      break;
    case 3:
      val = low_digit(g_minute);
      digitalWrite(CA_PINS[2], HIGH);
      digitalWrite(CA_PINS[3], LOW);
      DIGIT_OUT = g_hexfont[val] & ~SEG_DP; // dp of last digit indicates dec mode
      break;
  }
  update_count++;
}

void update_time(DateTime now) {
  g_hour = now.hour();
  g_minute = now.minute();
}

void check_time() {
  DateTime now = rtc.now();
  if (g_hour != now.hour() || g_minute != now.minute()) {
    update_time(now);
  }
}

void setup() {
  // put your setup code here, to run once:

  // All bits of DIGIT_OUT are configured as outputs
  DIGIT_DDR = 0xFF;

  // Set up common anode control pins
  for (uint8_t i = 0; i < 4; i++) {
    pinMode(CA_PINS[i], OUTPUT);
    digitalWrite(CA_PINS[i], HIGH);
  }

  while (!rtc.begin()) {
    // Couldn't find RTC?
  }

  // Set initial time, otherwise clock doesn't seem
  // to start running
  DateTime set(2019, 5, 15, 0, 0, 0);
  rtc.adjust(set);

  // Set the time according to the RTC
  update_time(rtc.now());

  // Debouncing of pushbuttons
  set_btn.attach(11, INPUT_PULLUP);
  set_btn.interval(10);
  hour_btn.attach(A1, INPUT_PULLUP);
  hour_btn.interval(10);
  minute_btn.attach(A0, INPUT_PULLUP);
  minute_btn.interval(10);
}

void loop() {
  // Update button states
  set_btn.update();
  hour_btn.update();
  minute_btn.update();

  // Blink second display's decimal point at about .5 Hz
  if ((count & 0x3FF) == 0) {
    blinker = !blinker;
  }

  // Check time periodically
  if ((count & 0x3F) == 0) {
    check_time();
  }

  // Refresh display periodically
  if ((count & 0x3) == 0) {
    if (display_mode == 0) {
      update_display();      // hex mode
    } else {
      update_display_dec();  // dec mode
    }
  }

  // Handle set state
  if (set_btn.read()) {
    // Set is not pressed
    set_state = SET_NOT_PRESSED;
    set_count = 0;
  } else {
    switch (set_state) {
      case SET_NOT_PRESSED:
        // Set has just been pressed
        set_state = SET_PRESSED;
        break;
      case SET_PRESSED:
        // Increment set count
        set_count++;
        // If set has been pressed long enough, change display mode
        if (set_count > DISPLAY_MODE_CHANGE_MS) {
          display_mode = !display_mode;
          set_state = SET_MODE_CHANGED;
        }
        break;
    }
  }

  uint8_t change_time_allowed = (set_state == SET_PRESSED || set_state == SET_HR_MIN_CHANGED);

  // Check whether buttons are being used to adjust the time.
  // All buttons are high when not pressed, and low when pressed.
  // The set button must be pressed for the hour and minute
  // adjust buttons to be used.
  bool adjust = false;
  if (hour_btn.fell() && change_time_allowed) {
    // Adjust hour
    g_hour++;
    if (g_hour >= 24) { g_hour = 0; }
    adjust = true;
  }
  if (minute_btn.fell() && change_time_allowed) {
    // Adjust minute
    g_minute++;
    if (g_minute >= 60) { g_minute = 0; }
    adjust = true;
  }
  if (adjust) {
    // Time was changed, so update RTC
    DateTime cur = rtc.now();
    DateTime adj(cur.year(), cur.month(), cur.day(), g_hour, g_minute, 0);
    rtc.adjust(adj);

    // Set state to SET_HR_MIN_CHANGED (if it was not already):
    // this ensures that we won't trigger an unintended mode change
    set_state = SET_HR_MIN_CHANGED;
  }

  // Timing delay
  delay(TIMING_DELAY_MS);
  
  count++;
}
