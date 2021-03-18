#include <Arduino.h>
#include "TM1637Display.h"

#include "display.h"
#include "defines.h"
#include "states.h"

extern RTC_DS3231 rtc;
static TM1637Display display(CLK, DIO);

static const int TIME_PULSE_COUNT = 24;         // number of pulses time should be displayed
static const int TEMP_PULSE_COUNT = 4;          // number of pulses temp should be displayed         
static const uint8_t DEGREE_CELCIUS[] = {       // segments for °C display
    SEG_A | SEG_B | SEG_G | SEG_F, // °
    SEG_A | SEG_E | SEG_F | SEG_D  // C
};

typedef enum
{
    TEMP,
    TIME
} TimeTempState;                                // local state for switching between time and temp display

static unsigned long then = millis();           // timinig
static int pulse_count = 0;                     // counting of pulses
static int pulse_count_max = TIME_PULSE_COUNT;  // initialize for time display
static bool colonVisible = false;               // initialize center ":" off
static TimeTempState display_state = TIME;      // initialize with time display

static void update_display(LightData *state);   // update display when state is dirty
static void tick_time_temp();                   // pulse when displaying time/temp

/**
 * Initialize the display
 */
void init_display()
{
    display.setBrightness(2);
}

/**
 * Check state and update display when dirty
 */
void tick_display(LightData *store)
{
    if (store->dirty)
    {
        update_display(store);
    }
    if (store->state == STATE_TIME)
    {
        tick_time_temp();
    }
}

/**
 * Update display depending on state
 */
void update_display(LightData *store)
{
    digitalWrite(LED_TIME, LOW);
    digitalWrite(LED_ON, LOW);
    digitalWrite(LED_OFF, LOW);

    if (store->state == STATE_TIME)
    {
        pulse_count = 0;
        digitalWrite(LED_TIME, HIGH);
        DateTime time = rtc.now();
        display.showNumberDecEx(time.hour() * 100 + time.minute(), 0b01000000, true);
    }
    else if (store->state == STATE_SET_TIME)
    {
        digitalWrite(LED_TIME, HIGH);
        display.showNumberDecEx(store->time.hour() * 100 + store->time.minute(), 0b01000000, true);
    }
    else if (store->state == STATE_ON)
    {
        digitalWrite(LED_ON, HIGH);
        display.showNumberDecEx(store->on.hour() * 100 + store->on.minute(), 0b01000000, true);
    }
    else if (store->state == STATE_OFF)
    {
        digitalWrite(LED_OFF, HIGH);
        display.showNumberDecEx(store->off.hour() * 100 + store->off.minute(), 0b01000000, true);
    }

    if (store->blink) {
        display.clear();
        delay(200);         // uhhh!
        store->blink = false;
        update_display(store);
    }

    store->dirty = false;
}

/**
 * handle pulses for ":" blinking and change between time and temp
 */
void tick_time_temp()
{
    if (millis() - then > 500)
    {
        if (pulse_count++ <= pulse_count_max)
        {
            if (display_state == TIME)
            {
                DateTime time = rtc.now();

                if (colonVisible)
                {
                    display.showNumberDecEx(time.hour() * 100 + time.minute(), 0b01000000, true);
                }
                else
                {
                    display.showNumberDecEx(time.hour() * 100 + time.minute(), 0b00000000, true);
                }
            }
            else
            {
                display.showNumberDec(round(rtc.getTemperature()), true, 2);
                display.setSegments(DEGREE_CELCIUS, 2, 2);
            }
        }
        else
        {
            // pause for one pulse
            display.clear();
            pulse_count = 0;
            display_state = display_state == TIME ? TEMP : TIME;
            pulse_count_max = display_state == TIME ? TIME_PULSE_COUNT : TEMP_PULSE_COUNT;
        }

        colonVisible = !colonVisible;
        then = millis();
    }
}