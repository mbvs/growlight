#include <EEPROM.h>
#include "RTClib.h"
#include "states.h"
#include "defines.h"


/**
 * states.cpp
 * 
 * Handles global states depending on button-pushes and status of toggle switch
 */

extern RTC_DS3231 rtc;

static const int IDLE_LONG = 5000;                       // fallback delay when in on or off state
static const int IDLE_SHORT = 1000;                      // fallback delay after a blink
static const TimeSpan step_big = TimeSpan(0, 0, 5, 0);   // 5 min - step for on or off times
static const TimeSpan step_small = TimeSpan(0, 0, 1, 0); // 1 min - step for time

static unsigned long max_idle; // fallback delay (holds IDLE_LONG or IDLE_SHORT)
static unsigned long then;     // timing

static LightData initial;        // declaration for lightData pointer
LightData *lightData = &initial; // declaration of lightData pointer

static void tick_mode();

/**
 * Initializes the state with starting values
 */
void init_states()
{
    initial = {
        .mode = MODE_OFF,
        .state = STATE_TIME,
        .time = rtc.now(),
        .on = DateTime(1, 1, 1, int(EEPROM.read(0)), int(EEPROM.read(1)), 0),
        .off = DateTime(1, 1, 1, int(EEPROM.read(2)), int(EEPROM.read(3)), 0),
        .blink = false,
        .dirty = true
        };
}

/**
 * Ticks the states in every loop
 */
void tick_states(LightData *store)
{
    tick_mode();

    // fallback-routine when nothing happens in on or off state
    if (store->state != STATE_TIME && millis() - then > max_idle)
    {
        store->dirty = true;
        store->state = STATE_TIME;
        store->on = DateTime(1, 1, 1, int(EEPROM.read(0)), int(EEPROM.read(1)), 0);
        store->off = DateTime(1, 1, 1, int(EEPROM.read(2)), int(EEPROM.read(3)), 0);
        Serial.println("falling back to state STATE_TIME");
    }
}

/**
 * Resets the idle interval after push on up or down
 */
void idleReset(int idle_time)
{
    max_idle = idle_time;
    then = millis();
}

/**
 * Writes actual on/off times to eeprom after confirm push
 * (when something was actually changed)
 */
bool writeEEPROM(int add_hour, int add_minute, int hour, int minute)
{
    bool written = false;
    if (int(EEPROM.read(add_hour)) != hour)
    {
        EEPROM.write(add_hour, byte(hour));
        written = true;
    }
    if (int(EEPROM.read(add_minute)) != minute)
    {
        EEPROM.write(add_minute, byte(minute));
        written = true;
    }

    return written;
}

/**
 * Checks status of toggle switch and sets mode
 */
void tick_mode()
{
    if (digitalRead(SWITCH_LIGHT) == LOW && lightData->mode != MODE_LIGHTS)
    {
        lightData->mode = MODE_LIGHTS;
        Serial.println("switching mode to MODE_LIGHTS");
    }
    else if (digitalRead(SWITCH_TIMER) == LOW && lightData->mode != MODE_TIMER)
    {
        lightData->mode = MODE_TIMER;
        Serial.println("switching mode to MODE_TIMER");
    }
    else if (digitalRead(SWITCH_TIMER) != LOW && digitalRead(SWITCH_LIGHT) != LOW && lightData->mode != MODE_OFF)
    {
        lightData->mode = MODE_OFF;
        Serial.println("switching mode to MODE_OFF");
    }
}


/**
 * StateButton was pushed
 */
void state()
{
    Serial.println("state button pressed");
    lightData->dirty = true;
    idleReset(IDLE_LONG);

    if (lightData->state == STATE_TIME)
    {
        lightData->state = STATE_ON;
        Serial.println("switching state to STATE_ON");
    }
    else if (lightData->state == STATE_ON)
    {
        lightData->state = STATE_OFF;
        Serial.println("switching state to STATE_OFF");
    }
    else if (lightData->state == STATE_OFF || lightData->state == STATE_SET_TIME)
    {
        lightData->state = STATE_TIME;
        Serial.println("switching state to STATE_TIME");
    }
}

/**
 * ConfirmButton was pushed
 */
void confirm()
{
    Serial.println("confirm button pressed");
    idleReset(IDLE_SHORT);
    lightData->blink = true;
    lightData->dirty = true;

    if (lightData->state == STATE_ON)
    {
        writeEEPROM(0, 1, lightData->on.hour(), lightData->on.minute());
        Serial.print("setting ON time to ");
        Serial.println(lightData->on.hour()*100 + lightData->on.minute());
    }
    else if (lightData->state == STATE_OFF)
    {
        writeEEPROM(2, 3, lightData->off.hour(), lightData->off.minute());
        Serial.print("setting OFF time to ");
        Serial.println(lightData->off.hour()*100 + lightData->off.minute());
    }
    else if (lightData->state == STATE_SET_TIME)
    {
        rtc.adjust(DateTime(lightData->time));
        Serial.print("setting time to ");
        Serial.println(lightData->time.hour()*100 + lightData->time.minute());
    }
}

/**
 * DownButton was pushed
 */
void down()
{
    Serial.println("down button pressed");
    lightData->dirty = true;
    idleReset(IDLE_LONG);

    if (lightData->state == STATE_TIME)
    {
        lightData->time = rtc.now() - step_small;
        lightData->state = STATE_SET_TIME;
        Serial.println("switching state to STATE_SET_TIME");
    }
    else if (lightData->state == STATE_SET_TIME)
    {
        lightData->time = lightData->time - step_small;
    }
    else if (lightData->state == STATE_ON)
    {
        lightData->on = lightData->on - step_big;
    }
    else if (lightData->state == STATE_OFF)
    {
        lightData->off = lightData->off - step_big;
    }
}

/**
 * UpButton was pushed
 */
void up()
{
    Serial.println("up button pressed");
    lightData->dirty = true;
    idleReset(IDLE_LONG);

    if (lightData->state == STATE_TIME)
    {
        lightData->time = rtc.now() + step_small;
        lightData->state = STATE_SET_TIME;
    }
    else if (lightData->state == STATE_SET_TIME)
    {
        lightData->time = lightData->time + step_small;
    }
    else if (lightData->state == STATE_ON)
    {
        lightData->on = lightData->on + step_big;
    }
    else if (lightData->state == STATE_OFF)
    {
        lightData->off = lightData->off + step_big;
    }
}
