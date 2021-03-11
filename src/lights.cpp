#include "lights.h"
#include "defines.h"

extern RTC_DS3231 rtc;

typedef enum
{
    OFF,
    ON,
    UP,
    DOWN
} LightsState;

static LightsState state = OFF;

static const byte DIMM_INTERVAL = 40;
static unsigned long then;

static void switch_off(int time, int on, int off);
static void switch_on(int time, int on, int off);
static void dimm_up();
static void dimm_down();

void lightsTick(LightData *store)
{
    // don't switch lights when editing on off times
    if (store->state != STATE_TIME)
        return;

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
    // Serial.println(state);

    switch (state)
    {
    case ON:
        switch_off(time, on, off);
        break;
    case OFF:
        switch_on(time, on, off);
        break;
    case UP:
        dimm_up();
        break;
    case DOWN:
        dimm_down();
        break;
    }
}

void switch_on(int time, int on, int off)
{
    if (off > on)
    {
        if (on <= time && time < off)
        {
            then = millis();
            state = UP;
            Serial.println("turning lights on (off > on)");
        }
    }
    else
    {
        if (!(off <= time && time < on))
        {
            then = millis();
            state = UP;
            Serial.println("turning lights on (off < on)");
        }
    }
}

void switch_off(int time, int on, int off)
{
    if (off > on)
    {
        if (!(on <= time && time < off))
        {
            then = millis();
            state = DOWN;
            Serial.println("turning lights off (off > on)");
        }
    }
    else
    {
        if (off <= time && time < on)
        {
            then = millis();
            state = DOWN;
            Serial.println("turning lights off (off < on)");
        }
    }
}

static void dimm_up()
{
    static byte level = 0;

    if (millis() - then > DIMM_INTERVAL)
    {
        analogWrite(FET, level++);
        then = millis();
        if (level == 255)
        {
            state = ON;
            level = 0;
            digitalWrite(FET, HIGH);
        }
    }
}

static void dimm_down()
{
    static byte level = 255;

    if (millis() - then > DIMM_INTERVAL)
    {
        analogWrite(FET, level--);
        then = millis();
        if (level == 0)
        {
            state = OFF;
            level = 255;
            digitalWrite(FET, LOW);
        }
    }
}