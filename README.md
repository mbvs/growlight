# growlight
An Arduino growing lights timer

The growlight is a time switch based on the DS3231 Precision RTC.
It allows setting of current time, on-time and off-time with buttons, displays time on a 4 digit 7 segment display and switches the state of the connected lights based on set on- and off times.
It also features a 3-way toggle switch to manually turn on and off the lights or pass control to the timer.

## Hardware

* Arduino nano
* DS3231 Precision RTC Module
* 4 digit 7 segment display with TM1637 controller
* 4 buttons
* ON-OFF-ON toggle switch
* IRLZ34 Logic level N-Channel MOSFet
* various resistors and leds

## Software

Growlight is developed in Visual Studio Code with the PlatformIO Plugin. To compile and flash connect your board to the PC, edit the platformio.ini upload_port setting to your needs and  issue
the platformIO build and upload commands.

## TODO
* fix switching to on/off if lights are dimming