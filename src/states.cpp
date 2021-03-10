#include <EEPROM.h>
#include "RTClib.h"
#include "states.h"
#include "defines.h"

extern RTC_DS3231 rtc;

static TimeSpan step_big = TimeSpan(0, 0, 5, 0);
static TimeSpan step_small = TimeSpan(0, 0, 1, 0);

LightData initial = {
    .state = STATE_TIME,
    .on = DateTime(1, 1, 1, int(EEPROM.read(0)), int(EEPROM.read(1)), 0),
    .off = DateTime(1, 1, 1, int(EEPROM.read(2)), int(EEPROM.read(3)), 0),
    .dirty = true};

LightData *lightData = &initial;

bool writeEEPROM(int add_hour, int add_minute, int hour, int minute) {
    bool written = false;
    if (int(EEPROM.read(add_hour)) != hour) {
        EEPROM.write(add_hour, byte(hour));
        written = true;
    }
    if (int(EEPROM.read(add_minute)) != minute) {
        EEPROM.write(add_minute, byte(minute));
        written = true;
    }

    return written;
}

void mode()
{
    lightData->dirty = true;

    if (lightData->state == STATE_TIME)
    {
        lightData->state = STATE_ON;
    }
    else if (lightData->state == STATE_ON)
    {
        writeEEPROM(0, 1, lightData->on.hour(), lightData->on.minute());
        lightData->state = STATE_OFF;
    }
    else if (lightData->state == STATE_OFF)
    {
        writeEEPROM(2, 3, lightData->off.hour(), lightData->off.minute());
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
