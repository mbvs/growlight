EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L megasaturnv:RTC_DS3231 RTC1
U 1 1 604B914B
P 10100 4550
F 0 "RTC1" H 10183 5037 60  0000 C CNN
F 1 "RTC_DS3231" H 10183 4931 60  0000 C CNN
F 2 "megasaturnv:RTC_DS3231" H 9900 4550 60  0001 C CNN
F 3 "" H 9900 4550 60  0001 C CNN
	1    10100 4550
	-1   0    0    -1  
$EndComp
$Comp
L roboulbricht:TM1637Display U1
U 1 1 604BB823
P 3200 5350
F 0 "U1" H 3778 5401 50  0000 L CNN
F 1 "TM1637Display" H 3778 5310 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3200 5350 50  0001 C CNN
F 3 "" H 3200 5350 50  0001 C CNN
	1    3200 5350
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 604BF9A7
P 3700 4500
F 0 "SW3" H 3700 4785 50  0000 C CNN
F 1 "CONFIRM" H 3700 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 3700 4700 50  0001 C CNN
F 3 "~" H 3700 4700 50  0001 C CNN
	1    3700 4500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 604C07B6
P 2450 4500
F 0 "SW1" H 2450 4785 50  0000 C CNN
F 1 "UP" H 2450 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 2450 4700 50  0001 C CNN
F 3 "~" H 2450 4700 50  0001 C CNN
	1    2450 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 604C1EDF
P 1900 3450
F 0 "D1" H 1893 3666 50  0000 C CNN
F 1 "LED" H 1893 3575 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1900 3450 50  0001 C CNN
F 3 "~" H 1900 3450 50  0001 C CNN
	1    1900 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 604C2966
P 2500 3450
F 0 "D2" H 2493 3666 50  0000 C CNN
F 1 "LED" H 2493 3575 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2500 3450 50  0001 C CNN
F 3 "~" H 2500 3450 50  0001 C CNN
	1    2500 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 604C2CF4
P 3100 3450
F 0 "D3" H 3093 3666 50  0000 C CNN
F 1 "LED" H 3093 3575 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3100 3450 50  0001 C CNN
F 3 "~" H 3100 3450 50  0001 C CNN
	1    3100 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 4700 2650 4500
$Comp
L Switch:SW_Push SW2
U 1 1 604CA6A8
P 3050 4500
F 0 "SW2" H 3050 4785 50  0000 C CNN
F 1 "DOWN" H 3050 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 3050 4700 50  0001 C CNN
F 3 "~" H 3050 4700 50  0001 C CNN
	1    3050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4600 3250 4500
$Comp
L power:GND #PWR0101
U 1 1 60561234
P 5800 5900
F 0 "#PWR0101" H 5800 5650 50  0001 C CNN
F 1 "GND" H 5805 5727 50  0000 C CNN
F 2 "" H 5800 5900 50  0001 C CNN
F 3 "" H 5800 5900 50  0001 C CNN
	1    5800 5900
	1    0    0    -1  
$EndComp
Connection ~ 8550 5900
Wire Wire Line
	8550 5900 8650 5900
Wire Wire Line
	8650 5150 8650 5900
Connection ~ 8650 5900
Wire Wire Line
	9050 4550 9500 4550
Wire Wire Line
	9050 4650 9500 4650
Wire Wire Line
	9500 4450 9450 4450
Wire Wire Line
	9500 4350 9350 4350
Wire Wire Line
	9350 4350 9350 5900
Text GLabel 6200 4050 0    50   Input ~ 0
leds_gnd
Text GLabel 6200 3950 0    50   Input ~ 0
led_time
Text GLabel 6200 3850 0    50   Input ~ 0
led_on
Text GLabel 6200 3750 0    50   Input ~ 0
led_off
Wire Wire Line
	6200 3750 8050 3750
Wire Wire Line
	6200 3850 8050 3850
Wire Wire Line
	6200 3950 8050 3950
Wire Wire Line
	6200 4050 7250 4050
Wire Wire Line
	7250 4050 7250 5900
Connection ~ 7250 5900
Wire Wire Line
	7250 5900 8550 5900
Text GLabel 6250 4800 0    50   Input ~ 0
switch_mode
Text GLabel 6250 4600 0    50   Input ~ 0
switch_down
Text GLabel 6250 4700 0    50   Input ~ 0
switch_up
Text GLabel 6250 4500 0    50   Input ~ 0
switch_confirm
Text GLabel 6250 4900 0    50   Input ~ 0
switchs_gnd
Wire Wire Line
	6250 4900 6950 4900
Wire Wire Line
	6950 4900 6950 5900
Wire Wire Line
	5800 5900 6350 5900
Connection ~ 6950 5900
Wire Wire Line
	8050 4050 7400 4050
Wire Wire Line
	7400 4050 7400 4600
Wire Wire Line
	7400 4600 6250 4600
Wire Wire Line
	8050 4150 7500 4150
Wire Wire Line
	7500 4150 7500 4700
Wire Wire Line
	7500 4700 6250 4700
Wire Wire Line
	8050 4250 7600 4250
Wire Wire Line
	7600 4250 7600 4800
Wire Wire Line
	7600 4800 6250 4800
Wire Wire Line
	6250 4500 7050 4500
Text GLabel 6200 5250 0    50   Input ~ 0
display_dio
Text GLabel 6200 5350 0    50   Input ~ 0
display_clk
Text GLabel 6200 5450 0    50   Input ~ 0
display_vcc
Text GLabel 6200 5550 0    50   Input ~ 0
display_gnd
Wire Wire Line
	6200 5550 6350 5550
Wire Wire Line
	6350 5550 6350 5900
Connection ~ 6350 5900
Wire Wire Line
	6200 5450 6400 5450
Wire Wire Line
	7700 5250 7700 4350
Wire Wire Line
	7700 4350 8050 4350
Wire Wire Line
	7800 5350 7800 4450
Wire Wire Line
	8050 4550 7900 4550
Wire Wire Line
	7800 4450 8050 4450
Wire Wire Line
	6200 5350 7800 5350
Wire Wire Line
	6200 2650 6800 2650
Wire Wire Line
	7550 2850 7900 2850
Wire Wire Line
	7900 4550 7900 2850
Wire Wire Line
	6400 1800 8450 1800
Connection ~ 6400 1800
Wire Wire Line
	6400 1800 6400 5450
Connection ~ 8450 1800
Text GLabel 6200 2650 0    50   Input ~ 0
lamp_gnd
Wire Wire Line
	9450 4450 9450 1800
Wire Wire Line
	8450 1800 9450 1800
Wire Wire Line
	8450 3150 8450 1800
$Comp
L power:+5V #PWR0102
U 1 1 60560E50
P 5800 1800
F 0 "#PWR0102" H 5800 1650 50  0001 C CNN
F 1 "+5V" H 5815 1973 50  0000 C CNN
F 2 "" H 5800 1800 50  0001 C CNN
F 3 "" H 5800 1800 50  0001 C CNN
	1    5800 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 604C6158
P 7400 2850
F 0 "R1" H 7470 2896 50  0000 L CNN
F 1 "R" H 7470 2805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 7330 2850 50  0001 C CNN
F 3 "~" H 7400 2850 50  0001 C CNN
	1    7400 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 5900 9350 5900
Wire Wire Line
	6200 5250 7700 5250
Wire Wire Line
	7050 4500 7050 5600
Wire Wire Line
	8550 5150 8550 5900
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 604B6E58
P 8550 4150
F 0 "A1" H 8550 3061 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 8550 2970 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8550 4150 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 8550 4150 50  0001 C CNN
	1    8550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4250 9250 4250
Wire Wire Line
	9250 4250 9250 5600
Wire Wire Line
	7050 5600 9250 5600
Text GLabel 6200 2500 0    50   Input ~ 0
lamp_vcc
$Comp
L power:+5V #PWR?
U 1 1 6061B960
P 5800 2200
F 0 "#PWR?" H 5800 2050 50  0001 C CNN
F 1 "+5V" H 5815 2373 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6061C094
P 5800 3200
F 0 "#PWR?" H 5800 2950 50  0001 C CNN
F 1 "GND" H 5805 3027 50  0000 C CNN
F 2 "" H 5800 3200 50  0001 C CNN
F 3 "" H 5800 3200 50  0001 C CNN
	1    5800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1800 6400 1800
Wire Wire Line
	6800 3050 6800 3200
Wire Wire Line
	6800 3200 5800 3200
Wire Wire Line
	6200 2500 6300 2500
Wire Wire Line
	6300 2500 6300 2200
Wire Wire Line
	6300 2200 5800 2200
$Comp
L Device:R R?
U 1 1 60641A5A
P 3100 3850
F 0 "R?" H 3170 3896 50  0000 L CNN
F 1 "R" H 3170 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 3030 3850 50  0001 C CNN
F 3 "~" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60642533
P 2500 3850
F 0 "R?" H 2570 3896 50  0000 L CNN
F 1 "R" H 2570 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 2430 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6064295C
P 1900 3850
F 0 "R?" H 1970 3896 50  0000 L CNN
F 1 "R" H 1970 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 1830 3850 50  0001 C CNN
F 3 "~" H 1900 3850 50  0001 C CNN
	1    1900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4000 2500 4050
Connection ~ 2500 4050
Wire Wire Line
	2500 4050 3100 4050
Wire Wire Line
	3100 4000 3100 4050
Connection ~ 3100 4050
Wire Wire Line
	1900 3700 1900 3600
Wire Wire Line
	1900 4050 2500 4050
Wire Wire Line
	2500 3600 2500 3700
Wire Wire Line
	3100 3600 3100 3700
Wire Wire Line
	1900 4000 1900 4050
Text GLabel 4400 3750 2    50   Input ~ 0
led_off
Text GLabel 4400 3850 2    50   Input ~ 0
led_on
Text GLabel 4400 3950 2    50   Input ~ 0
led_time
Text GLabel 4400 4050 2    50   Input ~ 0
leds_gnd
Wire Wire Line
	3100 4050 4400 4050
Wire Wire Line
	3100 3300 3650 3300
Wire Wire Line
	3650 3300 3650 3950
Wire Wire Line
	3650 3950 4400 3950
Wire Wire Line
	2500 3300 2500 3200
Wire Wire Line
	2500 3200 3750 3200
Wire Wire Line
	3750 3200 3750 3850
Wire Wire Line
	3750 3850 4400 3850
Wire Wire Line
	1900 3300 1900 3100
Wire Wire Line
	1900 3100 3850 3100
Wire Wire Line
	3850 3100 3850 3750
Wire Wire Line
	3850 3750 4400 3750
$Comp
L Switch:SW_Push SW?
U 1 1 606AF851
P 1900 4500
F 0 "SW?" H 1900 4785 50  0000 C CNN
F 1 "MODE" H 1900 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1900 4700 50  0001 C CNN
F 3 "~" H 1900 4700 50  0001 C CNN
	1    1900 4500
	1    0    0    -1  
$EndComp
Text GLabel 4400 4800 2    50   Input ~ 0
switch_mode
Text GLabel 4400 4600 2    50   Input ~ 0
switch_down
Text GLabel 4400 4700 2    50   Input ~ 0
switch_up
Text GLabel 4400 4500 2    50   Input ~ 0
switch_confirm
Text GLabel 4400 4900 2    50   Input ~ 0
switchs_gnd
Wire Wire Line
	3900 4500 4400 4500
Wire Wire Line
	3250 4600 4400 4600
Wire Wire Line
	2650 4700 4400 4700
Wire Wire Line
	2100 4800 2100 4500
Wire Wire Line
	4400 4900 3500 4900
Wire Wire Line
	1700 4900 1700 4500
Wire Wire Line
	2250 4500 2250 4900
Connection ~ 2250 4900
Wire Wire Line
	2250 4900 1700 4900
Connection ~ 2850 4900
Wire Wire Line
	2850 4900 2250 4900
Wire Wire Line
	3500 4500 3500 4900
Connection ~ 3500 4900
Wire Wire Line
	3500 4900 2850 4900
Text GLabel 4400 5250 2    50   Input ~ 0
display_dio
Text GLabel 4400 5350 2    50   Input ~ 0
display_clk
Text GLabel 4400 5450 2    50   Input ~ 0
display_vcc
Text GLabel 4400 5550 2    50   Input ~ 0
display_gnd
Wire Wire Line
	2850 4500 2850 4900
Wire Wire Line
	3750 5500 4300 5500
Wire Wire Line
	4300 5500 4300 5350
Wire Wire Line
	4300 5350 4400 5350
Wire Wire Line
	3750 5400 4250 5400
Wire Wire Line
	4250 5400 4250 5250
Wire Wire Line
	4250 5250 4400 5250
Wire Wire Line
	3750 5200 3900 5200
Wire Wire Line
	3900 5200 3900 5450
Wire Wire Line
	3900 5450 4400 5450
Wire Wire Line
	3750 5300 3850 5300
Wire Wire Line
	3850 5300 3850 5550
Wire Wire Line
	3850 5550 4400 5550
Wire Wire Line
	2100 4800 4400 4800
Wire Wire Line
	6350 5900 6950 5900
$Comp
L Transistor_FET:IRLZ34N Q1
U 1 1 604C0B43
P 6900 2850
F 0 "Q1" H 7104 2896 50  0000 L CNN
F 1 "IRLZ34N" H 7104 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7150 2775 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlz34npbf.pdf?fileId=5546d462533600a40153567206892720" H 6900 2850 50  0001 L CNN
	1    6900 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 2850 7150 2850
Wire Wire Line
	6950 5900 7150 5900
$Comp
L Device:R R?
U 1 1 607E3796
P 7150 3150
F 0 "R?" H 7220 3196 50  0000 L CNN
F 1 "R" H 7220 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" V 7080 3150 50  0001 C CNN
F 3 "~" H 7150 3150 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2850 7150 3000
Connection ~ 7150 2850
Wire Wire Line
	7150 2850 7250 2850
Wire Wire Line
	7150 3300 7150 5900
Connection ~ 7150 5900
Wire Wire Line
	7150 5900 7250 5900
$EndSCHEMATC
