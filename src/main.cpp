#include <Arduino.h>
#include "OneButton.h"
#include "RTClib.h"

#include "defines.h"
#include "states.h"
#include "display.h"
#include "lights.h"

RTC_DS3231 rtc;

static OneButton stateButton(BUTTON_MODE, true);
static OneButton upButton(BUTTON_UP, true);
static OneButton downButton(BUTTON_DOWN, true);
static OneButton confirmButton(BUTTON_CONFIRM, true);

static void init_pins();

void setup()
{
  Serial.begin(9600);
  init_pins();
  init_states();
  init_display();

  if (!rtc.begin())
  {
    Serial.println("RTC ERROR");
    abort();
  }
 
  if (rtc.lostPower())
  {
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }

  // rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  // DateTime now = rtc.now();
  // static TimeSpan step = TimeSpan(0, 0, 1, 0);
  // lightData->on = now + step;
  // lightData->off = now + step + step;
}

void loop()
{
  tick_states(lightData);
  tick_display(lightData);
  tick_lights(lightData);

  stateButton.tick();
  confirmButton.tick();
  downButton.tick();
  upButton.tick();
}

void init_pins()
{
  pinMode(LED_TIME, OUTPUT);
  pinMode(LED_ON, OUTPUT);
  pinMode(LED_OFF, OUTPUT);
  pinMode(FET, OUTPUT);

  pinMode(SWITCH_TIMER, INPUT_PULLUP);
  pinMode(SWITCH_LIGHT, INPUT_PULLUP);

  stateButton.attachClick(state);
  confirmButton.attachClick(confirm);

  upButton.attachClick(up);
  upButton.attachDuringLongPress(up);

  downButton.attachClick(down);
  downButton.attachDuringLongPress(down);
}