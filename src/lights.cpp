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

static LightsState lights_state = OFF;

static const byte DIMM_INTERVAL = 40;
static unsigned long then;
static byte level = 0;

static void check_times(LightData *store);
static void check_lights(LightData *store);

static void check_off_time(int time, int on, int off);
static void check_on_time(int time, int on, int off);
static void dimm_up();
static void dimm_down();
static void tick_up();
static void tick_down();

void lightsTick(LightData *store)
{
    if (store->mode == MODE_TIMER)
    {
        check_times(store);
    }
    else
    {
        check_lights(store);
    }
}

void check_lights(LightData *store)
{
    switch (lights_state)
    {
    case ON:
        if (store->mode == MODE_OFF)
            dimm_down();
        break;
    case OFF:
        if (store->mode == MODE_LIGHTS)
            dimm_up();
        break;
    case UP:
        if (store->mode == MODE_OFF)
            dimm_down();
        else
            tick_up();
        break;
    case DOWN:
        if (store->mode == MODE_LIGHTS)
            dimm_up();
        else
            tick_down();
        break;
    }
}

void check_times(LightData *store)
{
    // don't switch lights while editing times
    // TODO: what if we are currently dimming?
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

    switch (lights_state)
    {
    case ON:
        check_off_time(time, on, off);
        break;
    case OFF:
        check_on_time(time, on, off);
        break;
    case UP:
        tick_up();
        break;
    case DOWN:
        tick_down();
        break;
    }
}

void check_on_time(int time, int on, int off)
{
    if (off > on)
    {
        if (on <= time && time < off)
        {
            dimm_up();
            Serial.println("turning lights on (off > on)");
        }
    }
    else
    {
        if (!(off <= time && time < on))
        {
            dimm_up();
            Serial.println("turning lights on (off < on)");
        }
    }
}

void check_off_time(int time, int on, int off)
{
    if (off > on)
    {
        if (!(on <= time && time < off))
        {
            dimm_down();
            Serial.println("turning lights off (off > on)");
        }
    }
    else
    {
        if (off <= time && time < on)
        {
            dimm_down();
            Serial.println("turning lights off (off < on)");
        }
    }
}

static void dimm_up()
{
    then = millis();
    lights_state = UP;
}

static void dimm_down()
{
    then = millis();
    lights_state = DOWN;
}

static void tick_up()
{
    if (millis() - then > DIMM_INTERVAL)
    {
        if (level == 255)
        {
            lights_state = ON;
            digitalWrite(FET, HIGH);
        }
        else
        {
            analogWrite(FET, level++);
            Serial.print("dimming up ");
            Serial.println(level);
            then = millis();
        }
    }
}

static void tick_down()
{
    if (millis() - then > DIMM_INTERVAL)
    {
        if (level == 0)
        {
            lights_state = OFF;
            digitalWrite(FET, LOW);
        }
        else
        {
            analogWrite(FET, level--);
            Serial.print("dimming down ");
            Serial.println(level);
            then = millis();
        }
    }
}