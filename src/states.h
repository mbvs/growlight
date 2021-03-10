#ifndef _STATES_
#define _STATES_

#include "RTClib.h"

typedef enum
{
  STATE_TIME = 'T',
  STATE_ON = 'N',
  STATE_OFF = 'F',
} State;

typedef struct {
    State state;
    DateTime on;
    DateTime off;
    bool dirty;
} LightData;

extern LightData *lightData;

void mode();
void up();
void down();

void statesTick(LightData *store);

#endif