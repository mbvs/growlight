#ifndef _STATES_
#define _STATES_

#include "RTClib.h"

typedef enum
{
  STATE_TIME,
  STATE_ON,
  STATE_OFF
} State;

typedef enum
{
  MODE_TIMER,
  MODE_LIGHTS,
  MODE_OFF
} Mode;

typedef struct {
    Mode mode;
    State state;
    DateTime on;
    DateTime off;
    bool dirty;
} LightData;

extern LightData *lightData;

void state();
void confirm();
void up();
void down();

void statesTick(LightData *store);

#endif