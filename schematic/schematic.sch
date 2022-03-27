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
P 9900 3800
F 0 "RTC1" H 9983 4287 60  0000 C CNN
F 1 "RTC_DS3231" H 9983 4181 60  0000 C CNN
F 2 "megasaturnv:RTC_DS3231" H 9700 3800 60  0001 C CNN
F 3 "" H 9700 3800 60  0001 C CNN
	1    9900 3800
	-1   0    0    -1  
$EndComp
$Comp
L roboulbricht:TM1637Display U1
U 1 1 604BB823
P 3000 4600
F 0 "U1" H 3578 4651 50  0000 L CNN
F 1 "TM1637Display" H 3578 4560 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3000 4600 50  0001 C CNN
F 3 "" H 3000 4600 50  0001 C CNN
	1    3000 4600
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 604BF9A7
P 3500 3750
F 0 "SW3" H 3500 4035 50  0000 C CNN
F 1 "CONFIRM" H 3500 3944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 3500 3950 50  0001 C CNN
F 3 "~" H 3500 3950 50  0001 C CNN
	1    3500 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 604C07B6
P 2250 3750
F 0 "SW1" H 2250 4035 50  0000 C CNN
F 1 "UP" H 2250 3944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 2250 3950 50  0001 C CNN
F 3 "~" H 2250 3950 50  0001 C CNN
	1    2250 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 604C1EDF
P 1700 2700
F 0 "D1" H 1693 2916 50  0000 C CNN
F 1 "LED" H 1693 2825 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1700 2700 50  0001 C CNN
F 3 "~" H 1700 2700 50  0001 C CNN
	1    1700 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 604C2966
P 2300 2700
F 0 "D2" H 2293 2916 50  0000 C CNN
F 1 "LED" H 2293 2825 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2300 2700 50  0001 C CNN
F 3 "~" H 2300 2700 50  0001 C CNN
	1    2300 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 604C2CF4
P 2900 2700
F 0 "D3" H 2893 2916 50  0000 C CNN
F 1 "LED" H 2893 2825 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2900 2700 50  0001 C CNN
F 3 "~" H 2900 2700 50  0001 C CNN
	1    2900 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 3950 2450 3750
$Comp
L Switch:SW_Push SW2
U 1 1 604CA6A8
P 2850 3750
F 0 "SW2" H 2850 4035 50  0000 C CNN
F 1 "DOWN" H 2850 3944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 2850 3950 50  0001 C CNN
F 3 "~" H 2850 3950 50  0001 C CNN
	1    2850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3850 3050 3750
$Comp
L power:GND #PWR0101
U 1 1 60561234
P 5600 5650
F 0 "#PWR0101" H 5600 5400 50  0001 C CNN
F 1 "GND" H 5605 5477 50  0000 C CNN
F 2 "" H 5600 5650 50  0001 C CNN
F 3 "" H 5600 5650 50  0001 C CNN
	1    5600 5650
	1    0    0    -1  
$EndComp
Connection ~ 8350 5650
Wire Wire Line
	8350 5650 8450 5650
Wire Wire Line
	8450 4400 8450 5650
Connection ~ 8450 5650
Wire Wire Line
	8850 3800 9300 3800
Wire Wire Line
	8850 3900 9300 3900
Wire Wire Line
	9300 3700 9250 3700
Wire Wire Line
	9300 3600 9150 3600
Wire Wire Line
	9150 3600 9150 5650
Wire Wire Line
	7050 3300 7050 5650
Connection ~ 7050 5650
Wire Wire Line
	7050 5650 8350 5650
Wire Wire Line
	6750 4150 6750 5650
Wire Wire Line
	5600 5650 6200 5650
Connection ~ 6750 5650
Wire Wire Line
	7850 3300 7200 3300
Wire Wire Line
	7200 3300 7200 3850
Wire Wire Line
	7850 3400 7300 3400
Wire Wire Line
	7300 3400 7300 3950
Wire Wire Line
	7850 3500 7400 3500
Wire Wire Line
	7400 3500 7400 4050
Wire Wire Line
	6400 4800 6400 5650
Connection ~ 6400 5650
Wire Wire Line
	7500 4500 7500 3600
Wire Wire Line
	7500 3600 7850 3600
Wire Wire Line
	7600 4600 7600 3700
Wire Wire Line
	7850 3800 7700 3800
Wire Wire Line
	7600 3700 7850 3700
Wire Wire Line
	7350 2100 7700 2100
Wire Wire Line
	7700 3800 7700 2100
Wire Wire Line
	6200 1050 8250 1050
Connection ~ 6200 1050
Wire Wire Line
	6200 1050 6200 4700
Connection ~ 8250 1050
Wire Wire Line
	9250 3700 9250 1050
Wire Wire Line
	8250 1050 9250 1050
Wire Wire Line
	8250 2400 8250 1050
$Comp
L power:+5V #PWR0102
U 1 1 60560E50
P 5600 1050
F 0 "#PWR0102" H 5600 900 50  0001 C CNN
F 1 "+5V" H 5615 1223 50  0000 C CNN
F 2 "" H 5600 1050 50  0001 C CNN
F 3 "" H 5600 1050 50  0001 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 604C6158
P 7200 2100
F 0 "R1" H 7270 2146 50  0000 L CNN
F 1 "R" H 7270 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7130 2100 50  0001 C CNN
F 3 "~" H 7200 2100 50  0001 C CNN
	1    7200 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 5650 9150 5650
Wire Wire Line
	6850 3750 6850 4850
Wire Wire Line
	8350 4400 8350 5650
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 604B6E58
P 8350 3400
F 0 "A1" H 8350 2311 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 8350 2220 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8350 3400 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 8350 3400 50  0001 C CNN
	1    8350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3500 9050 3500
Wire Wire Line
	9050 3500 9050 4850
Wire Wire Line
	6850 4850 9050 4850
Wire Wire Line
	5600 1050 6200 1050
Wire Wire Line
	6600 2300 6600 2450
Wire Wire Line
	6600 2450 5600 2450
Wire Wire Line
	5750 1750 6100 1750
Wire Wire Line
	6100 1750 6100 1450
Wire Wire Line
	6100 1450 5600 1450
$Comp
L Device:R R4
U 1 1 60641A5A
P 2900 3100
F 0 "R4" H 2970 3146 50  0000 L CNN
F 1 "R" H 2970 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2830 3100 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2900 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60642533
P 2300 3100
F 0 "R3" H 2370 3146 50  0000 L CNN
F 1 "R" H 2370 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2230 3100 50  0001 C CNN
F 3 "~" H 2300 3100 50  0001 C CNN
	1    2300 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6064295C
P 1700 3100
F 0 "R2" H 1770 3146 50  0000 L CNN
F 1 "R" H 1770 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1630 3100 50  0001 C CNN
F 3 "~" H 1700 3100 50  0001 C CNN
	1    1700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3250 2300 3300
Connection ~ 2300 3300
Wire Wire Line
	2300 3300 2900 3300
Wire Wire Line
	2900 3250 2900 3300
Connection ~ 2900 3300
Wire Wire Line
	1700 2950 1700 2850
Wire Wire Line
	1700 3300 2300 3300
Wire Wire Line
	2300 2850 2300 2950
Wire Wire Line
	2900 2850 2900 2950
Wire Wire Line
	1700 3250 1700 3300
Wire Wire Line
	2900 3300 4600 3300
Wire Wire Line
	2900 2550 3450 2550
Wire Wire Line
	3450 2550 3450 3200
Wire Wire Line
	3450 3200 4600 3200
Wire Wire Line
	2300 2550 2300 2450
Wire Wire Line
	2300 2450 3550 2450
Wire Wire Line
	3550 2450 3550 3100
Wire Wire Line
	3550 3100 4600 3100
Wire Wire Line
	1700 2550 1700 2350
Wire Wire Line
	1700 2350 3650 2350
Wire Wire Line
	3650 2350 3650 3000
Wire Wire Line
	3650 3000 4600 3000
$Comp
L Switch:SW_Push SW4
U 1 1 606AF851
P 1700 3750
F 0 "SW4" H 1700 4035 50  0000 C CNN
F 1 "MODE" H 1700 3944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH-12mm" H 1700 3950 50  0001 C CNN
F 3 "~" H 1700 3950 50  0001 C CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3750 4600 3750
Wire Wire Line
	3050 3850 4600 3850
Wire Wire Line
	2450 3950 4600 3950
Wire Wire Line
	1900 4050 1900 3750
Wire Wire Line
	4600 4150 3300 4150
Wire Wire Line
	1500 4150 1500 3750
Wire Wire Line
	2050 3750 2050 4150
Connection ~ 2050 4150
Wire Wire Line
	2050 4150 1500 4150
Connection ~ 2650 4150
Wire Wire Line
	2650 4150 2050 4150
Wire Wire Line
	3300 3750 3300 4150
Connection ~ 3300 4150
Wire Wire Line
	3300 4150 2650 4150
Wire Wire Line
	2650 3750 2650 4150
Wire Wire Line
	3550 4750 4100 4750
Wire Wire Line
	4100 4750 4100 4600
Wire Wire Line
	3550 4650 4050 4650
Wire Wire Line
	4050 4650 4050 4500
Wire Wire Line
	3550 4450 3700 4450
Wire Wire Line
	3700 4450 3700 4700
Wire Wire Line
	3550 4550 3650 4550
Wire Wire Line
	3650 4550 3650 4800
Wire Wire Line
	1900 4050 4600 4050
Wire Wire Line
	6400 5650 6750 5650
$Comp
L Transistor_FET:IRLZ34N Q1
U 1 1 604C0B43
P 6700 2100
F 0 "Q1" H 6904 2146 50  0000 L CNN
F 1 "IRLZ34N" H 6904 2055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6950 2025 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlz34npbf.pdf?fileId=5546d462533600a40153567206892720" H 6700 2100 50  0001 L CNN
	1    6700 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6900 2100 6950 2100
Wire Wire Line
	6750 5650 6950 5650
$Comp
L Device:R R5
U 1 1 607E3796
P 6950 2400
F 0 "R5" H 7020 2446 50  0000 L CNN
F 1 "R" H 7020 2355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 2400 50  0001 C CNN
F 3 "~" H 6950 2400 50  0001 C CNN
	1    6950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2100 6950 2250
Connection ~ 6950 2100
Wire Wire Line
	6950 2100 7050 2100
Wire Wire Line
	6950 2550 6950 5650
Connection ~ 6950 5650
Wire Wire Line
	6950 5650 7050 5650
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 605C3691
P 5550 1750
F 0 "J1" H 5468 1525 50  0001 C CNN
F 1 "lamp VCC" H 5362 1746 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 1750 50  0001 C CNN
F 3 "~" H 5550 1750 50  0001 C CNN
	1    5550 1750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 605F29C4
P 5550 1900
F 0 "J2" H 5468 1675 50  0001 C CNN
F 1 "lamp GND" H 5362 1888 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 1900 50  0001 C CNN
F 3 "~" H 5550 1900 50  0001 C CNN
	1    5550 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 1900 6600 1900
$Comp
L Connector_Generic:Conn_01x01 J16
U 1 1 605FB7FA
P 5550 3000
F 0 "J16" H 5468 2775 50  0001 C CNN
F 1 "led OFF" H 5362 2988 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 3000 50  0001 C CNN
F 3 "~" H 5550 3000 50  0001 C CNN
	1    5550 3000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J17
U 1 1 6060002E
P 5550 3100
F 0 "J17" H 5468 2875 50  0001 C CNN
F 1 "led ON" H 5362 3088 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 3100 50  0001 C CNN
F 3 "~" H 5550 3100 50  0001 C CNN
	1    5550 3100
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J18
U 1 1 606002F7
P 5550 3200
F 0 "J18" H 5468 2975 50  0001 C CNN
F 1 "led TIME" H 5362 3188 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 3200 50  0001 C CNN
F 3 "~" H 5550 3200 50  0001 C CNN
	1    5550 3200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J19
U 1 1 60600805
P 5550 3300
F 0 "J19" H 5468 3075 50  0001 C CNN
F 1 "led GND" H 5362 3288 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 3300 50  0001 C CNN
F 3 "~" H 5550 3300 50  0001 C CNN
	1    5550 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 3000 7850 3000
Wire Wire Line
	5750 3100 7850 3100
Wire Wire Line
	5750 3200 7850 3200
Wire Wire Line
	5750 3300 7050 3300
$Comp
L Connector_Generic:Conn_01x01 J21
U 1 1 60631178
P 5550 3850
F 0 "J21" H 5468 3625 50  0001 C CNN
F 1 "button DOWN" H 5362 3838 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 3850 50  0001 C CNN
F 3 "~" H 5550 3850 50  0001 C CNN
	1    5550 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J20
U 1 1 60632029
P 5550 3750
F 0 "J20" H 5468 3525 50  0001 C CNN
F 1 "button CONFIRM" H 5362 3738 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 3750 50  0001 C CNN
F 3 "~" H 5550 3750 50  0001 C CNN
	1    5550 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J22
U 1 1 60632808
P 5550 3950
F 0 "J22" H 5468 3725 50  0001 C CNN
F 1 "button UP" H 5362 3938 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 3950 50  0001 C CNN
F 3 "~" H 5550 3950 50  0001 C CNN
	1    5550 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J23
U 1 1 60632E6B
P 5550 4050
F 0 "J23" H 5468 3825 50  0001 C CNN
F 1 "button MODE" H 5362 4038 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 4050 50  0001 C CNN
F 3 "~" H 5550 4050 50  0001 C CNN
	1    5550 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J24
U 1 1 606330F5
P 5550 4150
F 0 "J24" H 5468 3925 50  0001 C CNN
F 1 "button GND" H 5362 4138 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 4150 50  0001 C CNN
F 3 "~" H 5550 4150 50  0001 C CNN
	1    5550 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 3750 6850 3750
Wire Wire Line
	5750 3850 7200 3850
Wire Wire Line
	5750 3950 7300 3950
Wire Wire Line
	5750 4050 7400 4050
Wire Wire Line
	5750 4150 6750 4150
$Comp
L Connector_Generic:Conn_01x01 J25
U 1 1 60652215
P 5550 4500
F 0 "J25" H 5468 4275 50  0001 C CNN
F 1 "display DIO" H 5362 4488 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 4500 50  0001 C CNN
F 3 "~" H 5550 4500 50  0001 C CNN
	1    5550 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J26
U 1 1 606528DD
P 5550 4600
F 0 "J26" H 5468 4375 50  0001 C CNN
F 1 "display CLK" H 5362 4588 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 4600 50  0001 C CNN
F 3 "~" H 5550 4600 50  0001 C CNN
	1    5550 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J27
U 1 1 60652C5E
P 5550 4700
F 0 "J27" H 5468 4475 50  0001 C CNN
F 1 "display VCC" H 5362 4688 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 4700 50  0001 C CNN
F 3 "~" H 5550 4700 50  0001 C CNN
	1    5550 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J28
U 1 1 60652DC6
P 5550 4800
F 0 "J28" H 5468 4575 50  0001 C CNN
F 1 "display GND" H 5362 4788 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 4800 50  0001 C CNN
F 3 "~" H 5550 4800 50  0001 C CNN
	1    5550 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 4500 7500 4500
Wire Wire Line
	5750 4600 7600 4600
Wire Wire Line
	5750 4700 6200 4700
Wire Wire Line
	5750 4800 6400 4800
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 6067034E
P 4800 3000
F 0 "J3" H 4718 2775 50  0001 C CNN
F 1 "led OFF" H 4612 2988 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 3000 50  0001 C CNN
F 3 "~" H 4800 3000 50  0001 C CNN
	1    4800 3000
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 60670354
P 4800 3100
F 0 "J4" H 4718 2875 50  0001 C CNN
F 1 "led ON" H 4612 3088 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 3100 50  0001 C CNN
F 3 "~" H 4800 3100 50  0001 C CNN
	1    4800 3100
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 6067035A
P 4800 3200
F 0 "J5" H 4718 2975 50  0001 C CNN
F 1 "led TIME" H 4612 3188 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 3200 50  0001 C CNN
F 3 "~" H 4800 3200 50  0001 C CNN
	1    4800 3200
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 60670360
P 4800 3300
F 0 "J6" H 4718 3075 50  0001 C CNN
F 1 "led GND" H 4612 3288 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 3300 50  0001 C CNN
F 3 "~" H 4800 3300 50  0001 C CNN
	1    4800 3300
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 60690D9D
P 4800 3850
F 0 "J8" H 4718 3625 50  0001 C CNN
F 1 "button DOWN" H 4612 3838 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 3850 50  0001 C CNN
F 3 "~" H 4800 3850 50  0001 C CNN
	1    4800 3850
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 60690DA3
P 4800 3750
F 0 "J7" H 4718 3525 50  0001 C CNN
F 1 "button CONFIRM" H 4612 3738 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 3750 50  0001 C CNN
F 3 "~" H 4800 3750 50  0001 C CNN
	1    4800 3750
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 60690DA9
P 4800 3950
F 0 "J9" H 4718 3725 50  0001 C CNN
F 1 "button UP" H 4612 3938 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 3950 50  0001 C CNN
F 3 "~" H 4800 3950 50  0001 C CNN
	1    4800 3950
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 60690DAF
P 4800 4050
F 0 "J10" H 4718 3825 50  0001 C CNN
F 1 "button MODE" H 4612 4038 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 4050 50  0001 C CNN
F 3 "~" H 4800 4050 50  0001 C CNN
	1    4800 4050
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J11
U 1 1 60690DB5
P 4800 4150
F 0 "J11" H 4718 3925 50  0001 C CNN
F 1 "button GND" H 4612 4138 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 4150 50  0001 C CNN
F 3 "~" H 4800 4150 50  0001 C CNN
	1    4800 4150
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 606B0AB8
P 4800 4500
F 0 "J12" H 4718 4275 50  0001 C CNN
F 1 "display DIO" H 4612 4488 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 4500 50  0001 C CNN
F 3 "~" H 4800 4500 50  0001 C CNN
	1    4800 4500
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 606B0ABE
P 4800 4600
F 0 "J13" H 4718 4375 50  0001 C CNN
F 1 "display CLK" H 4612 4588 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 4600 50  0001 C CNN
F 3 "~" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 606B0AC4
P 4800 4700
F 0 "J14" H 4718 4475 50  0001 C CNN
F 1 "display VCC" H 4612 4688 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 4700 50  0001 C CNN
F 3 "~" H 4800 4700 50  0001 C CNN
	1    4800 4700
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 606B0ACA
P 4800 4800
F 0 "J15" H 4718 4575 50  0001 C CNN
F 1 "display GND" H 4612 4788 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 4800 50  0001 C CNN
F 3 "~" H 4800 4800 50  0001 C CNN
	1    4800 4800
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 4500 4600 4500
Wire Wire Line
	4100 4600 4600 4600
Wire Wire Line
	3700 4700 4600 4700
Wire Wire Line
	3650 4800 4600 4800
$Comp
L Connector_Generic:Conn_01x01 J29
U 1 1 6071A909
P 5400 1050
F 0 "J29" H 5318 825 50  0001 C CNN
F 1 "VCC" H 5212 1046 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5400 1050 50  0001 C CNN
F 3 "~" H 5400 1050 50  0001 C CNN
	1    5400 1050
	-1   0    0    1   
$EndComp
Connection ~ 5600 1050
$Comp
L Connector_Generic:Conn_01x01 J31
U 1 1 6071AE41
P 5400 2450
F 0 "J31" H 5318 2225 50  0001 C CNN
F 1 "GND lamp" H 5212 2446 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5400 2450 50  0001 C CNN
F 3 "~" H 5400 2450 50  0001 C CNN
	1    5400 2450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J30
U 1 1 6071B350
P 5400 1450
F 0 "J30" H 5318 1225 50  0001 C CNN
F 1 "VCC amp" H 5212 1446 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5400 1450 50  0001 C CNN
F 3 "~" H 5400 1450 50  0001 C CNN
	1    5400 1450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J32
U 1 1 6071B7AC
P 5400 5650
F 0 "J32" H 5318 5425 50  0001 C CNN
F 1 "GND" H 5212 5646 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5400 5650 50  0001 C CNN
F 3 "~" H 5400 5650 50  0001 C CNN
	1    5400 5650
	-1   0    0    1   
$EndComp
Connection ~ 5600 5650
$Comp
L Switch:SW_SPDT_MSM SW5
U 1 1 60672305
P 3500 5250
F 0 "SW5" H 3500 5535 50  0000 C CNN
F 1 "MODE" H 3500 5444 50  0000 C CNN
F 2 "ToggleSwitch:SW_Toggle_Blue_wSlots" H 3500 5250 50  0001 C CNN
F 3 "~" H 3500 5250 50  0001 C CNN
	1    3500 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J33
U 1 1 60673DD3
P 4800 5200
F 0 "J33" H 4718 4975 50  0001 C CNN
F 1 "switch_TIMER" H 4612 5188 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 5200 50  0001 C CNN
F 3 "~" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J34
U 1 1 60673DD9
P 4800 5300
F 0 "J34" H 4718 5075 50  0001 C CNN
F 1 "switch_LIGHT" H 4612 5288 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 5300 50  0001 C CNN
F 3 "~" H 4800 5300 50  0001 C CNN
	1    4800 5300
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J35
U 1 1 60673DDF
P 4800 5400
F 0 "J35" H 4718 5175 50  0001 C CNN
F 1 "switch_GND" H 4612 5388 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 4800 5400 50  0001 C CNN
F 3 "~" H 4800 5400 50  0001 C CNN
	1    4800 5400
	1    0    0    1   
$EndComp
Wire Wire Line
	3300 5450 3300 5250
Wire Wire Line
	4600 5200 3700 5200
Wire Wire Line
	3700 5200 3700 5150
Wire Wire Line
	4600 5300 3700 5300
Wire Wire Line
	3700 5300 3700 5350
Wire Wire Line
	4600 5400 3700 5400
Wire Wire Line
	3700 5400 3700 5450
Wire Wire Line
	3700 5450 3300 5450
$Comp
L Connector_Generic:Conn_01x01 J36
U 1 1 606C7209
P 5550 5200
F 0 "J36" H 5468 4975 50  0001 C CNN
F 1 "switch_TIMER" H 5362 5188 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 5200 50  0001 C CNN
F 3 "~" H 5550 5200 50  0001 C CNN
	1    5550 5200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J37
U 1 1 606C720F
P 5550 5300
F 0 "J37" H 5468 5075 50  0001 C CNN
F 1 "switch_LIGHT" H 5362 5288 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 5300 50  0001 C CNN
F 3 "~" H 5550 5300 50  0001 C CNN
	1    5550 5300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J38
U 1 1 606C7215
P 5550 5400
F 0 "J38" H 5468 5175 50  0001 C CNN
F 1 "switch_GND" H 5362 5388 50  0000 R TNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 5550 5400 50  0001 C CNN
F 3 "~" H 5550 5400 50  0001 C CNN
	1    5550 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 5400 6200 5400
Wire Wire Line
	6200 5400 6200 5650
Connection ~ 6200 5650
Wire Wire Line
	6200 5650 6400 5650
Wire Wire Line
	5750 5200 7700 5200
Wire Wire Line
	7700 5200 7700 3900
Wire Wire Line
	7700 3900 7850 3900
Wire Wire Line
	5750 5300 7800 5300
Wire Wire Line
	7800 5300 7800 4000
Wire Wire Line
	7800 4000 7850 4000
$EndSCHEMATC
