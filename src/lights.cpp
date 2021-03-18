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

static LightsState lights_state = OFF;                  // local states of lights

static const byte DIMM_INTERVAL = 40;                   // timespan for dimming
static unsigned long then;                              // timing
static byte level = 0;                                  // stores current dimming level

static void check_times(LightData *store);              // checks wether now is in off or on timespan
static void check_lights(LightData *store);             // checks status of lights

static void check_off_time(int time, int on, int off);  // checks off timespan
static void check_on_time(int time, int on, int off);   // checks on timespan
static void dimm_up();                                  // starts dimming up
static void dimm_down();                                // starts dimming down
static void tick_up();                                  // ticks dimming up
static void tick_down();                                // tick dimming down


/**
 * Handle tick event
 */
void tick_lights(LightData *store)
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

/**
 * check wether lights should be on or off
 * when in manual mode, i.e. not timed
 */
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

/**
 * check wether lights should be on or off
 * when in timed mode
 */
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

/**
 * Check wether current time lies in on span
 */
void check_on_time(int time, int on, int off)
{
    if (off > on)
    {
        if (on <= time && time < off)
        {
            dimm_up();
        }
    }
    else
    {
        if (!(off <= time && time < on))
        {
            dimm_up();
        }
    }
}

/**
 * Check wether current time lies in off span
 */
void check_off_time(int time, int on, int off)
{
    if (off > on)
    {
        if (!(on <= time && time < off))
        {
            dimm_down();
        }
    }
    else
    {
        if (off <= time && time < on)
        {
            dimm_down();
        }
    }
}

/**
 * Initalize switching on the lamps
 */
static void dimm_up()
{
    then = millis();
    lights_state = UP;
    Serial.println("turning light ON");
}

/**
 * Initialize switching off the lamps
 */
static void dimm_down()
{
    then = millis();
    lights_state = DOWN;
    Serial.println("turning light DOWN");
}

/**
 * Dimm lamps gradually on
 */
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
            then = millis();
        }
    }
}

/**
 * Dimm lamps gradually off
 */
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
            then = millis();
        }
    }
}