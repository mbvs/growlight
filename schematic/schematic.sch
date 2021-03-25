EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "growlights"
Date "2021-03-24"
Rev "1"
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
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 3700 4700 50  0001 C CNN
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
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 2450 4700 50  0001 C CNN
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
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 3050 4700 50  0001 C CNN
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
Wire Wire Line
	7250 4050 7250 5900
Connection ~ 7250 5900
Wire Wire Line
	7250 5900 8550 5900
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
	8050 4150 7500 4150
Wire Wire Line
	7500 4150 7500 4700
Wire Wire Line
	8050 4250 7600 4250
Wire Wire Line
	7600 4250 7600 4800
Wire Wire Line
	6350 5550 6350 5900
Connection ~ 6350 5900
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
	7550 2850 7900 2850
Wire Wire Line
	7900 4550 7900 2850
Wire Wire Line
	6400 1800 8450 1800
Connection ~ 6400 1800
Wire Wire Line
	6400 1800 6400 5450
Connection ~ 8450 1800
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
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7330 2850 50  0001 C CNN
F 3 "~" H 7400 2850 50  0001 C CNN
	1    7400 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 5900 9350 5900
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
Wire Wire Line
	5800 1800 6400 1800
Wire Wire Line
	6800 3050 6800 3200
Wire Wire Line
	6800 3200 5800 3200
Wire Wire Line
	5950 2500 6300 2500
Wire Wire Line
	6300 2500 6300 2200
Wire Wire Line
	6300 2200 5800 2200
$Comp
L Device:R R4
U 1 1 60641A5A
P 3100 3850
F 0 "R4" H 3170 3896 50  0000 L CNN
F 1 "R" H 3170 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 3850 50  0001 C CNN
F 3 "~" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60642533
P 2500 3850
F 0 "R3" H 2570 3896 50  0000 L CNN
F 1 "R" H 2570 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2430 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6064295C
P 1900 3850
F 0 "R2" H 1970 3896 50  0000 L CNN
F 1 "R" H 1970 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 3850 50  0001 C CNN
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
Wire Wire Line
	3100 4050 4800 4050
Wire Wire Line
	3100 3300 3650 3300
Wire Wire Line
	3650 3300 3650 3950
Wire Wire Line
	3650 3950 4800 3950
Wire Wire Line
	2500 3300 2500 3200
Wire Wire Line
	2500 3200 3750 3200
Wire Wire Line
	3750 3200 3750 3850
Wire Wire Line
	3750 3850 4800 3850
Wire Wire Line
	1900 3300 1900 3100
Wire Wire Line
	1900 3100 3850 3100
Wire Wire Line
	3850 3100 3850 3750
Wire Wire Line
	3850 3750 4800 3750
$Comp
L Switch:SW_Push SW4
U 1 1 606AF851
P 1900 4500
F 0 "SW4" H 1900 4785 50  0000 C CNN
F 1 "MODE" H 1900 4694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 1900 4700 50  0001 C CNN
F 3 "~" H 1900 4700 50  0001 C CNN
	1    1900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4500 4800 4500
Wire Wire Line
	3250 4600 4800 4600
Wire Wire Line
	2650 4700 4800 4700
Wire Wire Line
	2100 4800 2100 4500
Wire Wire Line
	4800 4900 3500 4900
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
Wire Wire Line
	2850 4500 2850 4900
Wire Wire Line
	3750 5500 4300 5500
Wire Wire Line
	4300 5500 4300 5350
Wire Wire Line
	3750 5400 4250 5400
Wire Wire Line
	4250 5400 4250 5250
Wire Wire Line
	3750 5200 3900 5200
Wire Wire Line
	3900 5200 3900 5450
Wire Wire Line
	3750 5300 3850 5300
Wire Wire Line
	3850 5300 3850 5550
Wire Wire Line
	2100 4800 4800 4800
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
L Device:R R5
U 1 1 607E3796
P 7150 3150
F 0 "R5" H 7220 3196 50  0000 L CNN
F 1 "R" H 7220 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7080 3150 50  0001 C CNN
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
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 605C3691
P 5750 2500
F 0 "J1" H 5668 2275 50  0001 C CNN
F 1 "lamp VCC" H 5562 2496 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 2500 50  0001 C CNN
F 3 "~" H 5750 2500 50  0001 C CNN
	1    5750 2500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 605F29C4
P 5750 2650
F 0 "J2" H 5668 2425 50  0001 C CNN
F 1 "lamp GND" H 5562 2638 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 2650 50  0001 C CNN
F 3 "~" H 5750 2650 50  0001 C CNN
	1    5750 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 2650 6800 2650
$Comp
L Connector_Generic:Conn_01x01 J16
U 1 1 605FB7FA
P 5750 3750
F 0 "J16" H 5668 3525 50  0001 C CNN
F 1 "led OFF" H 5562 3738 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 3750 50  0001 C CNN
F 3 "~" H 5750 3750 50  0001 C CNN
	1    5750 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J17
U 1 1 6060002E
P 5750 3850
F 0 "J17" H 5668 3625 50  0001 C CNN
F 1 "led ON" H 5562 3838 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 3850 50  0001 C CNN
F 3 "~" H 5750 3850 50  0001 C CNN
	1    5750 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J18
U 1 1 606002F7
P 5750 3950
F 0 "J18" H 5668 3725 50  0001 C CNN
F 1 "led TIME" H 5562 3938 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 3950 50  0001 C CNN
F 3 "~" H 5750 3950 50  0001 C CNN
	1    5750 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J19
U 1 1 60600805
P 5750 4050
F 0 "J19" H 5668 3825 50  0001 C CNN
F 1 "led GND" H 5562 4038 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 4050 50  0001 C CNN
F 3 "~" H 5750 4050 50  0001 C CNN
	1    5750 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 3750 8050 3750
Wire Wire Line
	5950 3850 8050 3850
Wire Wire Line
	5950 3950 8050 3950
Wire Wire Line
	5950 4050 7250 4050
$Comp
L Connector_Generic:Conn_01x01 J21
U 1 1 60631178
P 5750 4600
F 0 "J21" H 5668 4375 50  0001 C CNN
F 1 "button DOWN" H 5562 4588 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 4600 50  0001 C CNN
F 3 "~" H 5750 4600 50  0001 C CNN
	1    5750 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J20
U 1 1 60632029
P 5750 4500
F 0 "J20" H 5668 4275 50  0001 C CNN
F 1 "button CONFIRM" H 5562 4488 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 4500 50  0001 C CNN
F 3 "~" H 5750 4500 50  0001 C CNN
	1    5750 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J22
U 1 1 60632808
P 5750 4700
F 0 "J22" H 5668 4475 50  0001 C CNN
F 1 "button UP" H 5562 4688 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 4700 50  0001 C CNN
F 3 "~" H 5750 4700 50  0001 C CNN
	1    5750 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J23
U 1 1 60632E6B
P 5750 4800
F 0 "J23" H 5668 4575 50  0001 C CNN
F 1 "button MODE" H 5562 4788 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 4800 50  0001 C CNN
F 3 "~" H 5750 4800 50  0001 C CNN
	1    5750 4800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J24
U 1 1 606330F5
P 5750 4900
F 0 "J24" H 5668 4675 50  0001 C CNN
F 1 "button GND" H 5562 4888 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 4900 50  0001 C CNN
F 3 "~" H 5750 4900 50  0001 C CNN
	1    5750 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 4500 7050 4500
Wire Wire Line
	5950 4600 7400 4600
Wire Wire Line
	5950 4700 7500 4700
Wire Wire Line
	5950 4800 7600 4800
Wire Wire Line
	5950 4900 6950 4900
$Comp
L Connector_Generic:Conn_01x01 J25
U 1 1 60652215
P 5750 5250
F 0 "J25" H 5668 5025 50  0001 C CNN
F 1 "display DIO" H 5562 5238 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 5250 50  0001 C CNN
F 3 "~" H 5750 5250 50  0001 C CNN
	1    5750 5250
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J26
U 1 1 606528DD
P 5750 5350
F 0 "J26" H 5668 5125 50  0001 C CNN
F 1 "display CLK" H 5562 5338 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 5350 50  0001 C CNN
F 3 "~" H 5750 5350 50  0001 C CNN
	1    5750 5350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J27
U 1 1 60652C5E
P 5750 5450
F 0 "J27" H 5668 5225 50  0001 C CNN
F 1 "display VCC" H 5562 5438 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 5450 50  0001 C CNN
F 3 "~" H 5750 5450 50  0001 C CNN
	1    5750 5450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J28
U 1 1 60652DC6
P 5750 5550
F 0 "J28" H 5668 5325 50  0001 C CNN
F 1 "display GND" H 5562 5538 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5750 5550 50  0001 C CNN
F 3 "~" H 5750 5550 50  0001 C CNN
	1    5750 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 5250 7700 5250
Wire Wire Line
	5950 5350 7800 5350
Wire Wire Line
	5950 5450 6400 5450
Wire Wire Line
	5950 5550 6350 5550
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 6067034E
P 5000 3750
F 0 "J3" H 4918 3525 50  0001 C CNN
F 1 "led OFF" H 4812 3738 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
	1    5000 3750
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 60670354
P 5000 3850
F 0 "J4" H 4918 3625 50  0001 C CNN
F 1 "led ON" H 4812 3838 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 3850 50  0001 C CNN
F 3 "~" H 5000 3850 50  0001 C CNN
	1    5000 3850
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 6067035A
P 5000 3950
F 0 "J5" H 4918 3725 50  0001 C CNN
F 1 "led TIME" H 4812 3938 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 3950 50  0001 C CNN
F 3 "~" H 5000 3950 50  0001 C CNN
	1    5000 3950
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 60670360
P 5000 4050
F 0 "J6" H 4918 3825 50  0001 C CNN
F 1 "led GND" H 4812 4038 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 4050 50  0001 C CNN
F 3 "~" H 5000 4050 50  0001 C CNN
	1    5000 4050
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 60690D9D
P 5000 4600
F 0 "J8" H 4918 4375 50  0001 C CNN
F 1 "button DOWN" H 4812 4588 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 4600 50  0001 C CNN
F 3 "~" H 5000 4600 50  0001 C CNN
	1    5000 4600
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 60690DA3
P 5000 4500
F 0 "J7" H 4918 4275 50  0001 C CNN
F 1 "button CONFIRM" H 4812 4488 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 4500 50  0001 C CNN
F 3 "~" H 5000 4500 50  0001 C CNN
	1    5000 4500
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 60690DA9
P 5000 4700
F 0 "J9" H 4918 4475 50  0001 C CNN
F 1 "button UP" H 4812 4688 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 4700 50  0001 C CNN
F 3 "~" H 5000 4700 50  0001 C CNN
	1    5000 4700
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 60690DAF
P 5000 4800
F 0 "J10" H 4918 4575 50  0001 C CNN
F 1 "button MODE" H 4812 4788 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 4800 50  0001 C CNN
F 3 "~" H 5000 4800 50  0001 C CNN
	1    5000 4800
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 60690DB5
P 5000 4900
F 0 "J11" H 4918 4675 50  0001 C CNN
F 1 "button GND" H 4812 4888 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 4900 50  0001 C CNN
F 3 "~" H 5000 4900 50  0001 C CNN
	1    5000 4900
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 606B0AB8
P 5000 5250
F 0 "J12" H 4918 5025 50  0001 C CNN
F 1 "display DIO" H 4812 5238 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 5250 50  0001 C CNN
F 3 "~" H 5000 5250 50  0001 C CNN
	1    5000 5250
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 606B0ABE
P 5000 5350
F 0 "J13" H 4918 5125 50  0001 C CNN
F 1 "display CLK" H 4812 5338 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 5350 50  0001 C CNN
F 3 "~" H 5000 5350 50  0001 C CNN
	1    5000 5350
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 606B0AC4
P 5000 5450
F 0 "J14" H 4918 5225 50  0001 C CNN
F 1 "display VCC" H 4812 5438 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 5450 50  0001 C CNN
F 3 "~" H 5000 5450 50  0001 C CNN
	1    5000 5450
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 606B0ACA
P 5000 5550
F 0 "J15" H 4918 5325 50  0001 C CNN
F 1 "display GND" H 4812 5538 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5000 5550 50  0001 C CNN
F 3 "~" H 5000 5550 50  0001 C CNN
	1    5000 5550
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 5250 4800 5250
Wire Wire Line
	4300 5350 4800 5350
Wire Wire Line
	3900 5450 4800 5450
Wire Wire Line
	3850 5550 4800 5550
$Comp
L Connector_Generic:Conn_01x01 J29
U 1 1 6071A909
P 5600 1800
F 0 "J29" H 5518 1575 50  0001 C CNN
F 1 "VCC" H 5412 1796 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5600 1800 50  0001 C CNN
F 3 "~" H 5600 1800 50  0001 C CNN
	1    5600 1800
	-1   0    0    1   
$EndComp
Connection ~ 5800 1800
$Comp
L Connector_Generic:Conn_01x01 J31
U 1 1 6071AE41
P 5600 3200
F 0 "J31" H 5518 2975 50  0001 C CNN
F 1 "GND lamp" H 5412 3196 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5600 3200 50  0001 C CNN
F 3 "~" H 5600 3200 50  0001 C CNN
	1    5600 3200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J30
U 1 1 6071B350
P 5600 2200
F 0 "J30" H 5518 1975 50  0001 C CNN
F 1 "VCC amp" H 5412 2196 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5600 2200 50  0001 C CNN
F 3 "~" H 5600 2200 50  0001 C CNN
	1    5600 2200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J32
U 1 1 6071B7AC
P 5600 5900
F 0 "J32" H 5518 5675 50  0001 C CNN
F 1 "GND" H 5412 5896 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5600 5900 50  0001 C CNN
F 3 "~" H 5600 5900 50  0001 C CNN
	1    5600 5900
	-1   0    0    1   
$EndComp
Connection ~ 5800 5900
$EndSCHEMATC
