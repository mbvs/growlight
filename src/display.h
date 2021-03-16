#ifndef _DISPLAY_
#define _DISPLAY_

#include "states.h"
#include "RTClib.h"

void init_display();
void tick_display(LightData *current);

#endif