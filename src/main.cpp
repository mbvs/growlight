#include <Arduino.h>
#include "OneButton.h"
#include "RTClib.h"

#include "defines.h"
#include "states.h"
#include "display.h"
#include "lights.h"

OneButton modeButton(BUTTON_MODE, true);
OneButton upButton(BUTTON_UP, true);
OneButton downButton(BUTTON_DOWN, true);

RTC_DS3231 rtc;

void setup()
{
  Serial.begin(9600);

  pinMode(LED_TIME, OUTPUT);
  pinMode(LED_ON, OUTPUT);
  pinMode(LED_OFF, OUTPUT);
  pinMode(FET, OUTPUT);
  digitalWrite(FET, LOW);

  modeButton.attachClick(mode);

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

  //rtc.adjust(DateTime(1, 1, 1, 0, 0, 0));
  //rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));

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
  delay(10);
  displayTick(lightData);
  lightsTick(lightData);
  statesTick(lightData);

  modeButton.tick();
  downButton.tick();
  upButton.tick();
}