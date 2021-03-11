#include <Arduino.h>
#include "TM1637Display.h"

#include "display.h"
#include "defines.h"

extern RTC_DS3231 rtc;

static TM1637Display display(CLK, DIO);

static void update_display(LightData *state);
static void time_temp_tick();

typedef enum
{
    TEMP,
    TIME
} TimeTempState;

void initDisplay()
{
    display.setBrightness(0x0a);
}

void displayTick(LightData *store)
{
    if (store->dirty)
    {
        update_display(store);
    }
    if (store->state == STATE_TIME)
    {
        time_temp_tick();
    }
}

void update_display(LightData *store)
{
    Serial.println("updating display");

    digitalWrite(LED_TIME, LOW);
    digitalWrite(LED_ON, LOW);
    digitalWrite(LED_OFF, LOW);

    store->dirty = false;

    if (store->state == STATE_TIME)
    {
        digitalWrite(LED_TIME, HIGH);
        DateTime time = rtc.now();
        display.showNumberDecEx(time.hour() * 100 + time.minute(), 0b01000000, true);
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
}

void time_temp_tick()
{
    static const int TIME_PULSE_COUNT = 24;
    static const int TEMP_PULSE_COUNT = 4;
    static bool colonVisible = false;
    static int pulse_count = 0;
    static int pulse_count_max = TIME_PULSE_COUNT;
    static TimeTempState state = TIME;
    static unsigned long then = millis();
    static int temp;
    static const uint8_t DEGREE_CELCIUS[] = {
        SEG_A | SEG_B | SEG_G | SEG_F, // °
        SEG_A | SEG_E | SEG_F | SEG_D  // C
    };

    if (millis() - then > 500)
    {
        if (pulse_count++ <= pulse_count_max)
        {
            if (state == TIME)
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
                temp = (int)rtc.getTemperature();
                display.showNumberDec(temp, true, 2);
                display.setSegments(DEGREE_CELCIUS, 2, 2);
            }
        }
        else
        {
            // pause for one pulse
            display.clear();
            pulse_count = 0;
            state = state == TIME ? TEMP : TIME;
            pulse_count_max = state == TIME ? TIME_PULSE_COUNT : TEMP_PULSE_COUNT;
        }

        colonVisible = !colonVisible;
        then = millis();
    }
}