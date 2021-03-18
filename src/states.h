#ifndef _STATES_
#define _STATES_

#include "RTClib.h"

typedef enum            // all states display can be in (switched by stateButton)
{
  STATE_TIME,
  STATE_SET_TIME,
  STATE_ON,
  STATE_OFF
} State;

typedef enum                  // all modes timer can be in (switch by toggle switch)     
{
  MODE_TIMER,
  MODE_LIGHTS,
  MODE_OFF
} Mode;

typedef struct {             // main data structure
    Mode mode;
    State state;
    DateTime time;
    DateTime on;
    DateTime off;
    bool blink;
    bool dirty;
} LightData;

extern LightData *lightData;  // global store variable

void init_states();
void state();
void confirm();
void up();
void down();

void tick_states(LightData *store);

#endif