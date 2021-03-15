#include <Arduino.h>
#include "OneButton.h"
#include "RTClib.h"

#include "defines.h"
#include "states.h"
#include "display.h"
#include "lights.h"

OneButton stateButton(BUTTON_MODE, true);
OneButton upButton(BUTTON_UP, true);
OneButton downButton(BUTTON_DOWN, true);
OneButton confirmButton(BUTTON_CONFIRM, true);

RTC_DS3231 rtc;

void timer_on()
{
  Serial.println("timer on");
};

void lights_on()
{
  Serial.println("lights on");
};

void setup()
{
  Serial.begin(9600);

  pinMode(LED_TIME, OUTPUT);
  pinMode(LED_ON, OUTPUT);
  pinMode(LED_OFF, OUTPUT);
  pinMode(FET, OUTPUT);

  pinMode(SWITCH_TIMER, INPUT_PULLUP);
  pinMode(SWITCH_LIGHT, INPUT_PULLUP);

  digitalWrite(FET, LOW);

  stateButton.attachClick(state);
  confirmButton.attachClick(confirm);

  upButton.attachClick(up);
  upButton.attachDuringLongPress(up);

  downButton.attachClick(down);
  downButton.attachDuringLongPress(down);

  initDisplay();

  if (!rtc.begin())
  {
    Serial.println("Couldn't find RTC");
    Serial.flush();
    abort();
  }

  rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));

  // DateTime now = rtc.now();
  // static TimeSpan step = TimeSpan(0, 0, 1, 0);
  // lightData->on = now + step;
  // lightData->off = now + step + step;

  if (rtc.lostPower())
  {
    Serial.println("RTC lost power, let's set the time!");
    // When time needs to be set on a new device, or after a power loss, the
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    // This line sets the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
  }
}

void loop()
{
  if (digitalRead(SWITCH_LIGHT) == LOW && lightData->mode != MODE_LIGHTS)
  {
    Serial.println("switching mode to LIGHTS");
    lightData->mode = MODE_LIGHTS;
  }
  else if (digitalRead(SWITCH_TIMER) == LOW && lightData->mode != MODE_TIMER)
  {
    Serial.println("switching mode to TIMER");
    lightData->mode = MODE_TIMER;
  }
  else if (digitalRead(SWITCH_TIMER) != LOW && digitalRead(SWITCH_LIGHT) != LOW && lightData->mode != MODE_OFF)
  {
    Serial.println("switching mode to OFF");
    lightData->mode = MODE_OFF;
  }

  displayTick(lightData);
  lightsTick(lightData);
  statesTick(lightData);

  stateButton.tick();
  confirmButton.tick();
  downButton.tick();
  upButton.tick();
}