#include "lights.h"
#include "defines.h"

extern RTC_DS3231 rtc;

static bool lights_on = false;


void lightsTick(LightData *store)
{
    // don't switch lights when editing on off times
    if (store->state != STATE_TIME) return;

    DateTime now = rtc.now();

    int time = now.hour() * 100 + now.minute();
    int on = store->on.hour() * 100 + store->on.minute();
    int off = store->off.hour() * 100 + store->off.minute();

    // Serial.print(time);
    // Serial.print(" : ");
    // Serial.print(on);
    // Serial.print(" - ");
    // Serial.print(off);
    // Serial.print(" -> ");
    // Serial.println(lights_on);

    if (!lights_on)
    {
        if (off > on)
        {
            if (on <= time && time < off)
            {
                lights_on = true;
                digitalWrite(FET, HIGH);
                Serial.println("turning lights on (off > on)");
            }
        }
        else
        {
            if (!(off <= time && time < on))
            {
                lights_on = true;
                digitalWrite(FET, HIGH);
                Serial.println("turning lights on (off < on)");
            }
        }
    }
    else
    {
        if (off > on)
        {
            if (!(on <= time && time < off))
            {
                lights_on = false;
                digitalWrite(FET, LOW);
                Serial.println("turning lights off (off > on)");
            }
        }
        else
        {
            if (off <= time && time < on)
            {
                lights_on = false;
                digitalWrite(FET, LOW);
                Serial.println("turning lights off (off < on)");
            }
        }
    }
}