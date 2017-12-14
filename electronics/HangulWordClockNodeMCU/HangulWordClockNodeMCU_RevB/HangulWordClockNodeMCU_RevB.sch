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
LIBS:HangulWordClockNodeMCU_RevB-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Hangul Word Clock NodeMCUv2"
Date "2017-12-13"
Rev "B"
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
Text GLabel 2425 4500 2    60   Input ~ 0
VLED
Text GLabel 1525 4500 0    60   Input ~ 0
Vin
Text GLabel 1525 4600 0    60   Input ~ 0
GND
Text GLabel 2425 4600 2    60   Input ~ 0
GND
Text Notes 7000 2850 0    60   ~ 0
MBI5026CF\nVCC = 5V\nHIGH = >4.0V\nLOW  = <1.5V
$Comp
L BSS138 Q1
U 1 1 5A2C3E0D
P 5775 3975
F 0 "Q1" H 5975 4050 50  0000 L CNN
F 1 "BSS138" H 5975 3975 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 3900 50  0001 L CIN
F 3 "" H 5775 3975 50  0001 L CNN
	1    5775 3975
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A2C3FAF
P 5525 3875
F 0 "R1" V 5605 3875 50  0000 C CNN
F 1 "1K" V 5525 3875 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 3875 50  0001 C CNN
F 3 "" H 5525 3875 50  0001 C CNN
	1    5525 3875
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A2C4046
P 6025 3875
F 0 "R5" V 6105 3875 50  0000 C CNN
F 1 "1K" V 6025 3875 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 3875 50  0001 C CNN
F 3 "" H 6025 3875 50  0001 C CNN
	1    6025 3875
	1    0    0    -1  
$EndComp
Text GLabel 6025 3725 1    60   Input ~ 0
V5.0
Text GLabel 5525 3625 1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 4025 5525 4075
Wire Wire Line
	5475 4075 5575 4075
Wire Wire Line
	5975 4075 6075 4075
Wire Wire Line
	6025 4075 6025 4025
Wire Wire Line
	5775 3775 5775 3675
Wire Wire Line
	5775 3675 5525 3675
Wire Wire Line
	5525 3625 5525 3725
Connection ~ 5525 3675
$Comp
L LM1117-5.0 U1
U 1 1 5A2C4B88
P 1200 2150
F 0 "U1" H 1050 2275 50  0000 C CNN
F 1 "LM1117-5.0" H 1200 2275 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Horizontal" H 1200 2150 50  0001 C CNN
F 3 "" H 1200 2150 50  0001 C CNN
	1    1200 2150
	1    0    0    -1  
$EndComp
$Comp
L Barrel_Jack J1
U 1 1 5A2C4C05
P 1075 1150
F 0 "J1" H 1075 1360 50  0000 C CNN
F 1 "Barrel_Jack" H 1075 975 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 1125 1110 50  0001 C CNN
F 3 "" H 1125 1110 50  0001 C CNN
	1    1075 1150
	1    0    0    -1  
$EndComp
Text Notes 800  900  0    60   ~ 0
6.1V-20V Input
Text Notes 925  1975 0    60   ~ 0
800mA, 1.1VDO
Text GLabel 2100 2150 2    60   Input ~ 0
V5.0
Text GLabel 1175 3000 0    60   Input ~ 0
V5.0
$Comp
L D D1
U 1 1 5A2C543E
P 1325 3000
F 0 "D1" H 1325 3100 50  0000 C CNN
F 1 "D" H 1325 2900 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P12.70mm_Horizontal" H 1325 3000 50  0001 C CNN
F 3 "" H 1325 3000 50  0001 C CNN
	1    1325 3000
	-1   0    0    1   
$EndComp
Text GLabel 1475 3000 2    60   Input ~ 0
Vin
Text Notes 825  3550 0    60   ~ 0
USB Power Protection
Text GLabel 1375 1050 2    60   Input ~ 0
Vin
Text GLabel 1375 1150 2    60   Input ~ 0
GND
Text GLabel 1375 1250 2    60   Input ~ 0
GND
Text GLabel 1200 2600 3    60   Input ~ 0
GND
Text GLabel 800  2150 0    60   Input ~ 0
Vin
$Comp
L C C2
U 1 1 5A2C6FE0
P 1950 2350
F 0 "C2" H 1975 2450 50  0000 L CNN
F 1 "0.1uF" H 1975 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1988 2200 50  0001 C CNN
F 3 "" H 1950 2350 50  0001 C CNN
	1    1950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2150 2100 2150
Wire Wire Line
	1600 2200 1600 2150
Connection ~ 1600 2150
Wire Wire Line
	1950 2200 1950 2150
Connection ~ 1950 2150
Wire Wire Line
	1200 2450 1200 2600
Wire Wire Line
	1125 2550 1950 2550
Wire Wire Line
	1600 2550 1600 2500
Wire Wire Line
	1950 2550 1950 2500
Connection ~ 1600 2550
Connection ~ 1200 2550
$Comp
L C C1
U 1 1 5A2C7471
P 1600 2350
F 0 "C1" H 1625 2450 50  0000 L CNN
F 1 "10uF" H 1625 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1638 2200 50  0001 C CNN
F 3 "" H 1600 2350 50  0001 C CNN
	1    1600 2350
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q2
U 1 1 5A2C7B28
P 5775 2975
F 0 "Q2" H 5975 3050 50  0000 L CNN
F 1 "BSS138" H 5975 2975 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 2900 50  0001 L CIN
F 3 "" H 5775 2975 50  0001 L CNN
	1    5775 2975
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A2C7B2E
P 5525 2875
F 0 "R2" V 5605 2875 50  0000 C CNN
F 1 "1K" V 5525 2875 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 2875 50  0001 C CNN
F 3 "" H 5525 2875 50  0001 C CNN
	1    5525 2875
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A2C7B34
P 6025 2875
F 0 "R6" V 6105 2875 50  0000 C CNN
F 1 "1K" V 6025 2875 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 2875 50  0001 C CNN
F 3 "" H 6025 2875 50  0001 C CNN
	1    6025 2875
	1    0    0    -1  
$EndComp
Text GLabel 6025 2725 1    60   Input ~ 0
V5.0
Text GLabel 5525 2625 1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 3025 5525 3075
Wire Wire Line
	5475 3075 5575 3075
Wire Wire Line
	5975 3075 6075 3075
Wire Wire Line
	6025 3075 6025 3025
Wire Wire Line
	5775 2775 5775 2675
Wire Wire Line
	5775 2675 5525 2675
Wire Wire Line
	5525 2625 5525 2725
Connection ~ 5525 2675
$Comp
L BSS138 Q3
U 1 1 5A2C7F8B
P 5775 1975
F 0 "Q3" H 5975 2050 50  0000 L CNN
F 1 "BSS138" H 5975 1975 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 1900 50  0001 L CIN
F 3 "" H 5775 1975 50  0001 L CNN
	1    5775 1975
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A2C7F91
P 5525 1875
F 0 "R3" V 5605 1875 50  0000 C CNN
F 1 "1K" V 5525 1875 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 1875 50  0001 C CNN
F 3 "" H 5525 1875 50  0001 C CNN
	1    5525 1875
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A2C7F97
P 6025 1875
F 0 "R7" V 6105 1875 50  0000 C CNN
F 1 "1K" V 6025 1875 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 1875 50  0001 C CNN
F 3 "" H 6025 1875 50  0001 C CNN
	1    6025 1875
	1    0    0    -1  
$EndComp
Text GLabel 6025 1725 1    60   Input ~ 0
V5.0
Text GLabel 5525 1625 1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 2025 5525 2075
Wire Wire Line
	5475 2075 5575 2075
Wire Wire Line
	5975 2075 6075 2075
Wire Wire Line
	6025 2075 6025 2025
Wire Wire Line
	5775 1775 5775 1675
Wire Wire Line
	5775 1675 5525 1675
Wire Wire Line
	5525 1625 5525 1725
Connection ~ 5525 1675
$Comp
L BSS138 Q4
U 1 1 5A2C7FA8
P 5775 950
F 0 "Q4" H 5975 1025 50  0000 L CNN
F 1 "BSS138" H 5975 950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5975 875 50  0001 L CIN
F 3 "" H 5775 950 50  0001 L CNN
	1    5775 950 
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A2C7FAE
P 5525 850
F 0 "R4" V 5605 850 50  0000 C CNN
F 1 "1K" V 5525 850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5455 850 50  0001 C CNN
F 3 "" H 5525 850 50  0001 C CNN
	1    5525 850 
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A2C7FB4
P 6025 850
F 0 "R8" V 6105 850 50  0000 C CNN
F 1 "1K" V 6025 850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5955 850 50  0001 C CNN
F 3 "" H 6025 850 50  0001 C CNN
	1    6025 850 
	1    0    0    -1  
$EndComp
Text GLabel 6025 700  1    60   Input ~ 0
V5.0
Text GLabel 5525 600  1    60   Input ~ 0
V3.3
Wire Wire Line
	5525 1000 5525 1050
Wire Wire Line
	5475 1050 5575 1050
Wire Wire Line
	5975 1050 6075 1050
Wire Wire Line
	6025 1050 6025 1000
Wire Wire Line
	5775 750  5775 650 
Wire Wire Line
	5775 650  5525 650 
Wire Wire Line
	5525 600  5525 700 
Connection ~ 5525 650 
Text GLabel 5475 2075 0    60   Input ~ 0
PClock3.3
Text GLabel 5475 3075 0    60   Input ~ 0
PDataA3.3
Text GLabel 5475 1050 0    60   Input ~ 0
PStrobe3.3
Text GLabel 6075 1050 2    60   Input ~ 0
PStrobe
Text GLabel 6075 2075 2    60   Input ~ 0
PClock
Text GLabel 6075 3075 2    60   Input ~ 0
PDataA
Connection ~ 6025 1050
Connection ~ 5525 1050
Connection ~ 5525 2075
Connection ~ 6025 2075
Connection ~ 6025 3075
Connection ~ 5525 3075
Connection ~ 5525 4075
Connection ~ 6025 4075
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
$Comp
L BuckConverterLM2596 U3
U 1 1 5A2D1F9A
P 1975 4550
F 0 "U3" H 1975 4700 60  0000 C CNN
F 1 "BuckConverterLM2596" H 1975 4400 60  0000 C CNN
F 2 "MyKiCadParts:LM2596Module" H 1975 4550 60  0001 C CNN
F 3 "" H 1975 4550 60  0001 C CNN
	1    1975 4550
	1    0    0    -1  
$EndComp
$Comp
L LM1117-5.0 U4
U 1 1 5A2D3581
P 1075 2300
F 0 "U4" H 925 2425 50  0000 C CNN
F 1 "LM1117-5.0" H 1075 2425 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3Lead_TabPin2" H 1075 2300 50  0001 C CNN
F 3 "" H 1075 2300 50  0001 C CNN
	1    1075 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2150 900  2150
Wire Wire Line
	775  2300 775  2225
Wire Wire Line
	775  2225 850  2225
Wire Wire Line
	850  2225 850  2150
Connection ~ 850  2150
Wire Wire Line
	1075 2600 1125 2600
Wire Wire Line
	1125 2600 1125 2550
Wire Wire Line
	1375 2300 1525 2300
Wire Wire Line
	1525 2300 1525 2150
Connection ~ 1525 2150
Text GLabel 1175 3300 0    60   Input ~ 0
V5.0
$Comp
L D D2
U 1 1 5A2D541C
P 1325 3300
F 0 "D2" H 1325 3400 50  0000 C CNN
F 1 "D" H 1325 3200 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 1325 3300 50  0001 C CNN
F 3 "" H 1325 3300 50  0001 C CNN
	1    1325 3300
	-1   0    0    1   
$EndComp
Text GLabel 1475 3300 2    60   Input ~ 0
Vin
$Comp
L Barrel_Jack J2
U 1 1 5A2D618D
P 1875 1150
F 0 "J2" H 1875 1360 50  0000 C CNN
F 1 "Barrel_Jack" H 1875 975 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 1925 1110 50  0001 C CNN
F 3 "" H 1925 1110 50  0001 C CNN
	1    1875 1150
	1    0    0    -1  
$EndComp
Text GLabel 2175 1050 2    60   Input ~ 0
Vin
Text GLabel 2175 1150 2    60   Input ~ 0
GND
Text GLabel 2175 1250 2    60   Input ~ 0
GND
Text GLabel 7650 4550 0    60   Input ~ 0
PStrobe
Text GLabel 7650 4850 0    60   Input ~ 0
PClock
Text GLabel 7650 4650 0    60   Input ~ 0
PEnable
Text GLabel 7650 4750 0    60   Input ~ 0
PDataB
Text GLabel 5475 4075 0    60   Input ~ 0
PDataB3.3
Text GLabel 6075 4075 2    60   Input ~ 0
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
$EndSCHEMATC
