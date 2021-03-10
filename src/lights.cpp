#include "lights.h"
#include "defines.h"

extern RTC_DS3231 rtc;

static bool lights_on = false;

void lightsTick(LightData *current)
{
    DateTime now = rtc.now();

    if (lights_on)
    {
        if (
            now.hour() == current->off.hour()
            && now.minute() == current->off.minute()
            )
        {
            lights_on = false;
            digitalWrite(FET, LOW);
            Serial.println("turning lights off");
        }
    }
    else
    {
        if (
            now.hour() == current->on.hour() 
            && now.minute() == current->on.minute()
            )
        {
            lights_on = true;
            digitalWrite(FET, HIGH);
            Serial.println("turning lights on");
        }
    }
}