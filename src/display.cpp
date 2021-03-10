#include <Arduino.h>
#include "TM1637Display.h"

#include "display.h"
#include "defines.h"

extern RTC_DS3231 rtc;

TM1637Display display(CLK, DIO);

bool colonVisible = false;
unsigned long then = millis();

void initDisplay()
{
    display.setBrightness(0x0a);
}

void displayTick(LightData *current)
{

    if (current->dirty)
    {
        Serial.println("updating display");

        digitalWrite(LED_TIME, LOW);
        digitalWrite(LED_ON, LOW);
        digitalWrite(LED_OFF, LOW);

        current->dirty = false;
        if (current->state == STATE_TIME)
        {
            digitalWrite(LED_TIME, HIGH);
            DateTime time = rtc.now();
            display.showNumberDecEx(time.hour() * 100 + time.minute(), 0b01000000, true);
        }
        else if (current->state == STATE_ON)
        {
            digitalWrite(LED_ON, HIGH);
            display.showNumberDecEx(current->on.hour() * 100 + current->on.minute(), 0b01000000, true);
        }
        else if (current->state == STATE_OFF)
        {
            digitalWrite(LED_OFF, HIGH);
            display.showNumberDecEx(current->off.hour() * 100 + current->off.minute(), 0b01000000, true);
        }
    }

    if (current->state == STATE_TIME)
    {
        if (millis() - then > 500)
        {
            //Serial.println("updating time");

            DateTime time = rtc.now();

            if (colonVisible)
            {
                display.showNumberDecEx(time.hour() * 100 + time.minute(), 0b01000000, true);
            }
            else
            {
                display.showNumberDecEx(time.hour() * 100 + time.minute(), 0b00000000, true);
            }

            colonVisible = !colonVisible;
            then = millis();
        }
    }
}