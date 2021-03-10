
#include "RTClib.h"
#include "states.h"
#include "defines.h"

extern RTC_DS3231 rtc;

TimeSpan step_big = TimeSpan(0, 0, 5, 0);
TimeSpan step_small = TimeSpan(0, 0, 1, 0);

LightData initial = {
    .state = STATE_TIME,
    .on = DateTime(1, 1, 1, 0, 1, 0),
    .off = DateTime(1, 1, 1, 0, 2, 0),
    .dirty = true};

LightData *lightData = &initial;

void mode()
{
    lightData->dirty = true;

    if (lightData->state == STATE_TIME)
    {
        lightData->state = STATE_ON;
    }
    else if (lightData->state == STATE_ON)
    {
        lightData->state = STATE_OFF;
    }
    else
    {
        lightData->state = STATE_TIME;
    }
    Serial.print("STATE change:");
    Serial.println((char)lightData->state);
}

void down()
{
    lightData->dirty = true;
    if (lightData->state == STATE_TIME)
    {
        DateTime now = rtc.now();
        rtc.adjust(now - step_small);
    }
    else if (lightData->state == STATE_ON)
    {
        lightData->on = lightData->on - step_big;
        char buf[] = "hh:mm";
        Serial.print("on-time: ");
        Serial.println(lightData->on.toString(buf));
    }
    else if (lightData->state == STATE_OFF)
    {
        lightData->off = lightData->off - step_big;
        char buf[] = "hh:mm";
        Serial.print("off-time: ");
        Serial.println(lightData->off.toString(buf));
    }
}

void up()
{
    lightData->dirty = true;
    if (lightData->state == STATE_TIME)
    {
        DateTime now = rtc.now();
        rtc.adjust(now + step_small);
    }
    else if (lightData->state == STATE_ON)
    {
        lightData->on = lightData->on + step_big;
        char buf[] = "hh:mm";
        Serial.print("on-time: ");
        Serial.println(lightData->on.toString(buf));
    }
    else if (lightData->state == STATE_OFF)
    {
        lightData->off = lightData->off + step_big;
        char buf[] = "hh:mm";
        Serial.print("off-time: ");
        Serial.println(lightData->off.toString(buf));
    }
}
