EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:myParts
LIBS:HangulWordClockNodeMCU_RevD-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Hangul Word Clock NodeMCUv2"
Date "2018-01-08"
Rev "D"
Comp "Matthew Swarts"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NodeMCUv3 U2
U 1 1 5A2C367F
P 3250 2750
F 0 "U2" H 3250 2750 60  0000 C CNN
F 1 "NodeMCUv2" H 3250 1950 60  0000 C CNN
F 2 "MyKiCadParts:NodeMCU_V1.0" H 3250 2750 60  0001 C CNN
F 3 "" H 3250 2750 60  0001 C CNN
	1    3250 2750
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J6
U 1 1 5A2C36D4
P 7550 3575
F 0 "J6" H 7550 3875 50  0000 C CNN
F 1 "Conn_01x06" H 7550 3175 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 7550 3575 50  0001 C CNN
F 3 "" H 7550 3575 50  0001 C CNN
	1    7550 3575
	1    0    0    1   
$EndComp
Text GLabel 7350 3775 0    60   Input ~ 0
V5.0
Text GLabel 2750 3450 0    60   Input ~ 0
V5.0
Text GLabel 7350 3675 0    60   Input ~ 0
PClock
Text GLabel 7350 3575 0    60   Input ~ 0
PDataA
Text GLabel 7350 3475 0    60   Input ~ 0
PEnable
Text GLabel 7350 3375 0    60   Input ~ 0
PStrobe
Text GLabel 7350 3275 0    60   Input ~ 0
GND
Text GLabel 2750 2950 0    60   Input ~ 0
GND
Text GLabel 2750 3350 0    60   Input ~ 0
GND
Text GLabel 3750 3350 2    60   Input ~ 0
GND
Text GLabel 3750 2650 2    60   Input ~ 0
GND
Text GLabel 2750 3050 0    60   Input ~ 0
V3.3
Text GLabel 3750 3450 2    60   Input ~ 0
V3.3
Text GLabel 3750 2550 2    60   Input ~ 0
V3.3
Text Notes 7000 2850 0    60   ~ 0
MBI5026CF\nVCC = 5V\nHIGH = >4.0V\nLOW  = <1.5V
$Comp
L BSS138 Q1
U 1 1 5A2C3E0D
P 5775 4225
F 0 "Q1" H 5975 4300 50  0000 L CNN
F 1 "BSS138" H 5975 4225 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 4150 50  0001 L CIN
F 3 "" H 5775 4225 50  0001 L CNN
	1    5775 4225
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A2C3FAF
P 5525 4125
F 0 "R1" V 5605 4125 50  0000 C CNN
F 1 "1K" V 5525 4125 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 4125 50  0001 C CNN
F 3 "" H 5525 4125 50  0001 C CNN
	1    5525 4125
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A2C4046
P 6025 4125
F 0 "R5" V 6105 4125 50  0000 C CNN
F 1 "1K" V 6025 4125 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 4125 50  0001 C CNN
F 3 "" H 6025 4125 50  0001 C CNN
	1    6025 4125
	1    0    0    -1  
$EndComp
Text GLabel 6025 3975 1    60   Input ~ 0
V5.0
Text GLabel 5525 3875 1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 4275 5525 4325
Wire Wire Line
	5475 4325 5575 4325
Wire Wire Line
	5975 4325 6075 4325
Wire Wire Line
	6025 4325 6025 4275
Wire Wire Line
	5775 4025 5775 3925
Wire Wire Line
	5775 3925 5525 3925
Wire Wire Line
	5525 3875 5525 3975
Connection ~ 5525 3925
Text GLabel 1800 1075 2    60   Input ~ 0
V5.0
$Comp
L BSS138 Q2
U 1 1 5A2C7B28
P 5775 3225
F 0 "Q2" H 5975 3300 50  0000 L CNN
F 1 "BSS138" H 5975 3225 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 3150 50  0001 L CIN
F 3 "" H 5775 3225 50  0001 L CNN
	1    5775 3225
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A2C7B2E
P 5525 3125
F 0 "R2" V 5605 3125 50  0000 C CNN
F 1 "1K" V 5525 3125 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 3125 50  0001 C CNN
F 3 "" H 5525 3125 50  0001 C CNN
	1    5525 3125
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A2C7B34
P 6025 3125
F 0 "R6" V 6105 3125 50  0000 C CNN
F 1 "1K" V 6025 3125 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 3125 50  0001 C CNN
F 3 "" H 6025 3125 50  0001 C CNN
	1    6025 3125
	1    0    0    -1  
$EndComp
Text GLabel 6025 2975 1    60   Input ~ 0
V5.0
Text GLabel 5525 2875 1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 3275 5525 3325
Wire Wire Line
	5475 3325 5575 3325
Wire Wire Line
	5975 3325 6075 3325
Wire Wire Line
	6025 3325 6025 3275
Wire Wire Line
	5775 3025 5775 2925
Wire Wire Line
	5775 2925 5525 2925
Wire Wire Line
	5525 2875 5525 2975
Connection ~ 5525 2925
$Comp
L BSS138 Q3
U 1 1 5A2C7F8B
P 5775 2225
F 0 "Q3" H 5975 2300 50  0000 L CNN
F 1 "BSS138" H 5975 2225 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 2150 50  0001 L CIN
F 3 "" H 5775 2225 50  0001 L CNN
	1    5775 2225
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A2C7F91
P 5525 2125
F 0 "R3" V 5605 2125 50  0000 C CNN
F 1 "1K" V 5525 2125 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 2125 50  0001 C CNN
F 3 "" H 5525 2125 50  0001 C CNN
	1    5525 2125
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A2C7F97
P 6025 2125
F 0 "R7" V 6105 2125 50  0000 C CNN
F 1 "1K" V 6025 2125 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 2125 50  0001 C CNN
F 3 "" H 6025 2125 50  0001 C CNN
	1    6025 2125
	1    0    0    -1  
$EndComp
Text GLabel 6025 1975 1    60   Input ~ 0
V5.0
Text GLabel 5525 1875 1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 2275 5525 2325
Wire Wire Line
	5475 2325 5575 2325
Wire Wire Line
	5975 2325 6075 2325
Wire Wire Line
	6025 2325 6025 2275
Wire Wire Line
	5775 2025 5775 1925
Wire Wire Line
	5775 1925 5525 1925
Wire Wire Line
	5525 1875 5525 1975
Connection ~ 5525 1925
$Comp
L BSS138 Q4
U 1 1 5A2C7FA8
P 5775 1200
F 0 "Q4" H 5975 1275 50  0000 L CNN
F 1 "BSS138" H 5975 1200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 1125 50  0001 L CIN
F 3 "" H 5775 1200 50  0001 L CNN
	1    5775 1200
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A2C7FAE
P 5525 1100
F 0 "R4" V 5605 1100 50  0000 C CNN
F 1 "1K" V 5525 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 1100 50  0001 C CNN
F 3 "" H 5525 1100 50  0001 C CNN
	1    5525 1100
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A2C7FB4
P 6025 1100
F 0 "R8" V 6105 1100 50  0000 C CNN
F 1 "1K" V 6025 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 1100 50  0001 C CNN
F 3 "" H 6025 1100 50  0001 C CNN
	1    6025 1100
	1    0    0    -1  
$EndComp
Text GLabel 6025 950  1    60   Input ~ 0
V5.0
Text GLabel 5525 850  1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 1250 5525 1300
Wire Wire Line
	5475 1300 5575 1300
Wire Wire Line
	5975 1300 6075 1300
Wire Wire Line
	6025 1300 6025 1250
Wire Wire Line
	5775 1000 5775 900 
Wire Wire Line
	5775 900  5525 900 
Wire Wire Line
	5525 850  5525 950 
Connection ~ 5525 900 
Text GLabel 5475 2325 0    60   Input ~ 0
PClock3.3
Text GLabel 5475 3325 0    60   Input ~ 0
PDataA3.3
Text GLabel 5475 1300 0    60   Input ~ 0
PStrobe3.3
Text GLabel 6075 1300 2    60   Input ~ 0
PStrobe
Text GLabel 6075 2325 2    60   Input ~ 0
PClock
Text GLabel 6075 3325 2    60   Input ~ 0
PDataA
Connection ~ 6025 1300
Connection ~ 5525 1300
Connection ~ 5525 2325
Connection ~ 6025 2325
Connection ~ 6025 3325
Connection ~ 5525 3325
Connection ~ 5525 4325
Connection ~ 6025 4325
Text GLabel 3750 2750 2    60   Input ~ 0
PClock3.3
Text GLabel 3750 2950 2    60   Input ~ 0
PDataB3.3
Text GLabel 3750 2150 2    60   Input ~ 0
PStrobe3.3
Text GLabel 2950 6850 0    60   Input ~ 0
V5.0
Text GLabel 2950 6450 0    60   Input ~ 0
GND
Text GLabel 2950 6050 0    60   Input ~ 0
GND
Text GLabel 2950 5250 0    60   Input ~ 0
VLED
Text GLabel 2950 5650 0    60   Input ~ 0
VLED
$Comp
L Conn_01x06 J17
U 1 1 5A2CEC84
P 7850 4750
F 0 "J17" H 7850 5050 50  0000 C CNN
F 1 "Conn_01x06" H 7850 4350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 7850 4750 50  0001 C CNN
F 3 "" H 7850 4750 50  0001 C CNN
	1    7850 4750
	1    0    0    1   
$EndComp
Text GLabel 7650 4950 0    60   Input ~ 0
V5.0
Text GLabel 7650 4450 0    60   Input ~ 0
GND
$Comp
L Conn_01x01 J7
U 1 1 5A2CFF2A
P 3150 5250
F 0 "J7" H 3150 5350 50  0000 C CNN
F 1 "Conn_01x01" H 3150 5150 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3150 5250 50  0001 C CNN
F 3 "" H 3150 5250 50  0001 C CNN
	1    3150 5250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5A2D0473
P 3150 5650
F 0 "J8" H 3150 5750 50  0000 C CNN
F 1 "Conn_01x01" H 3150 5550 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3150 5650 50  0001 C CNN
F 3 "" H 3150 5650 50  0001 C CNN
	1    3150 5650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J9
U 1 1 5A2D04DF
P 3150 6050
F 0 "J9" H 3150 6150 50  0000 C CNN
F 1 "Conn_01x01" H 3150 5950 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3150 6050 50  0001 C CNN
F 3 "" H 3150 6050 50  0001 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J10
U 1 1 5A2D063A
P 3150 6450
F 0 "J10" H 3150 6550 50  0000 C CNN
F 1 "Conn_01x01" H 3150 6350 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3150 6450 50  0001 C CNN
F 3 "" H 3150 6450 50  0001 C CNN
	1    3150 6450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J11
U 1 1 5A2D06AE
P 3150 6850
F 0 "J11" H 3150 6950 50  0000 C CNN
F 1 "Conn_01x01" H 3150 6750 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3150 6850 50  0001 C CNN
F 3 "" H 3150 6850 50  0001 C CNN
	1    3150 6850
	1    0    0    -1  
$EndComp
Text GLabel 1500 1675 3    60   Input ~ 0
GND
Text GLabel 7650 4550 0    60   Input ~ 0
PStrobe
Text GLabel 7650 4850 0    60   Input ~ 0
PClock
Text GLabel 7650 4650 0    60   Input ~ 0
PEnable
Text GLabel 7650 4750 0    60   Input ~ 0
PDataB
Text GLabel 5475 4325 0    60   Input ~ 0
PDataB3.3
Text GLabel 6075 4325 2    60   Input ~ 0
PDataB
Text Notes 2775 1900 0    60   ~ 0
Don't use Pin 6-11
Text GLabel 3750 2850 2    60   Input ~ 0
PDataA3.3
Text GLabel 7700 3000 0    60   Input ~ 0
GND
Text GLabel 7750 3000 2    60   Input ~ 0
PEnable
Wire Wire Line
	7700 3000 7750 3000
$Comp
L Conn_01x06 J18
U 1 1 5A324E42
P 8625 3675
F 0 "J18" H 8625 3975 50  0000 C CNN
F 1 "Conn_01x06" H 8625 3275 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 8625 3675 50  0001 C CNN
F 3 "" H 8625 3675 50  0001 C CNN
	1    8625 3675
	1    0    0    1   
$EndComp
$Comp
L Conn_01x06 J19
U 1 1 5A324EB0
P 8625 4750
F 0 "J19" H 8625 5050 50  0000 C CNN
F 1 "Conn_01x06" H 8625 4350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 8625 4750 50  0001 C CNN
F 3 "" H 8625 4750 50  0001 C CNN
	1    8625 4750
	1    0    0    1   
$EndComp
Text GLabel 8425 3875 0    60   Input ~ 0
V5.0
Text GLabel 8425 3375 0    60   Input ~ 0
GND
Text GLabel 8425 4450 0    60   Input ~ 0
GND
Text GLabel 8425 4950 0    60   Input ~ 0
V5.0
Text Notes 2675 5025 0    60   ~ 0
1217080-1
$Comp
L Jumper_NO_Small JP4
U 1 1 5A3BC0FD
P 5000 1500
F 0 "JP4" H 5000 1580 50  0000 C CNN
F 1 "Jumper_NO_Small" H 5010 1440 50  0000 C CNN
F 2 "Connectors:GS2" H 5000 1500 50  0001 C CNN
F 3 "" H 5000 1500 50  0001 C CNN
	1    5000 1500
	1    0    0    -1  
$EndComp
Text GLabel 4900 1500 0    60   Input ~ 0
PStrobe3.3
Text GLabel 5100 1500 2    60   Input ~ 0
PStrobe
$Comp
L Jumper_NO_Small JP2
U 1 1 5A3BC86C
P 4975 2575
F 0 "JP2" H 4975 2655 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4985 2515 50  0000 C CNN
F 2 "Connectors:GS2" H 4975 2575 50  0001 C CNN
F 3 "" H 4975 2575 50  0001 C CNN
	1    4975 2575
	1    0    0    -1  
$EndComp
Text GLabel 4875 2575 0    60   Input ~ 0
PClock3.3
Text GLabel 5075 2575 2    60   Input ~ 0
PClock
$Comp
L Jumper_NO_Small JP1
U 1 1 5A3BD13B
P 4950 3500
F 0 "JP1" H 4950 3580 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4960 3440 50  0000 C CNN
F 2 "Connectors:GS2" H 4950 3500 50  0001 C CNN
F 3 "" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP3
U 1 1 5A3BD1DF
P 4975 4500
F 0 "JP3" H 4975 4580 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4985 4440 50  0000 C CNN
F 2 "Connectors:GS2" H 4975 4500 50  0001 C CNN
F 3 "" H 4975 4500 50  0001 C CNN
	1    4975 4500
	1    0    0    -1  
$EndComp
Text GLabel 4850 3500 0    60   Input ~ 0
PDataA3.3
Text GLabel 5050 3500 2    60   Input ~ 0
PDataA
Text GLabel 4875 4500 0    60   Input ~ 0
PDataB3.3
Text GLabel 5075 4500 2    60   Input ~ 0
PDataB
$Comp
L USB_B J3
U 1 1 5A53E7AC
P 1500 1275
F 0 "J3" H 1300 1725 50  0000 L CNN
F 1 "USB_B" H 1300 1625 50  0000 L CNN
F 2 "Connectors:USB_B" H 1650 1225 50  0001 C CNN
F 3 "" H 1650 1225 50  0001 C CNN
	1    1500 1275
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J1
U 1 1 5A542BCC
P 2675 1225
F 0 "J1" H 2675 1425 50  0000 C CNN
F 1 "USB_Breakout" H 2675 925 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 2675 1225 50  0001 C CNN
F 3 "" H 2675 1225 50  0001 C CNN
	1    2675 1225
	1    0    0    -1  
$EndComp
Text GLabel 2475 1125 0    60   Input ~ 0
V5.0
Text GLabel 2475 1425 0    60   Input ~ 0
GND
Text GLabel 1800 1375 2    60   Input ~ 0
D-
Text GLabel 1800 1275 2    60   Input ~ 0
D+
Text GLabel 2475 1325 0    60   Input ~ 0
D+
Text GLabel 2475 1225 0    60   Input ~ 0
D-
Text GLabel 3950 5275 0    60   Input ~ 0
V5.0
Text GLabel 4000 5275 2    60   Input ~ 0
VLED
Wire Wire Line
	3950 5275 4000 5275
$EndSCHEMATC
