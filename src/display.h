#ifndef _DISPLAY_
#define _DISPLAY_

#include "states.h"
#include "RTClib.h"

void initDisplay();
void displayTick(LightData *current);

#endif