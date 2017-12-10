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
LIBS:HangulWordClockNodeMCU_RevA-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Hangul Word Clock NodeMCUv2"
Date "2017-12-10"
Rev "A"
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
PData
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
P 5800 2000
F 0 "Q1" H 6000 2075 50  0000 L CNN
F 1 "BSS138" H 6000 2000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6000 1925 50  0001 L CIN
F 3 "" H 5800 2000 50  0001 L CNN
	1    5800 2000
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A2C3FAF
P 5550 1900
F 0 "R1" V 5630 1900 50  0000 C CNN
F 1 "1K" V 5550 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5480 1900 50  0001 C CNN
F 3 "" H 5550 1900 50  0001 C CNN
	1    5550 1900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A2C4046
P 6050 1900
F 0 "R5" V 6130 1900 50  0000 C CNN
F 1 "1K" V 6050 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5980 1900 50  0001 C CNN
F 3 "" H 6050 1900 50  0001 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
Text GLabel 6050 1750 1    60   Input ~ 0
V5.0
Text GLabel 5550 1650 1    60   Input ~ 0
V3.3
Wire Wire Line
	5550 2050 5550 2100
Wire Wire Line
	5500 2100 5600 2100
Wire Wire Line
	6000 2100 6100 2100
Wire Wire Line
	6050 2100 6050 2050
Wire Wire Line
	5800 1800 5800 1700
Wire Wire Line
	5800 1700 5550 1700
Wire Wire Line
	5550 1650 5550 1750
Connection ~ 5550 1700
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
P 5800 2900
F 0 "Q2" H 6000 2975 50  0000 L CNN
F 1 "BSS138" H 6000 2900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6000 2825 50  0001 L CIN
F 3 "" H 5800 2900 50  0001 L CNN
	1    5800 2900
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A2C7B2E
P 5550 2800
F 0 "R2" V 5630 2800 50  0000 C CNN
F 1 "1K" V 5550 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5480 2800 50  0001 C CNN
F 3 "" H 5550 2800 50  0001 C CNN
	1    5550 2800
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A2C7B34
P 6050 2800
F 0 "R6" V 6130 2800 50  0000 C CNN
F 1 "1K" V 6050 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5980 2800 50  0001 C CNN
F 3 "" H 6050 2800 50  0001 C CNN
	1    6050 2800
	1    0    0    -1  
$EndComp
Text GLabel 6050 2650 1    60   Input ~ 0
V5.0
Text GLabel 5550 2550 1    60   Input ~ 0
V3.3
Wire Wire Line
	5550 2950 5550 3000
Wire Wire Line
	5500 3000 5600 3000
Wire Wire Line
	6000 3000 6100 3000
Wire Wire Line
	6050 3000 6050 2950
Wire Wire Line
	5800 2700 5800 2600
Wire Wire Line
	5800 2600 5550 2600
Wire Wire Line
	5550 2550 5550 2650
Connection ~ 5550 2600
$Comp
L BSS138 Q3
U 1 1 5A2C7F8B
P 5800 3800
F 0 "Q3" H 6000 3875 50  0000 L CNN
F 1 "BSS138" H 6000 3800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6000 3725 50  0001 L CIN
F 3 "" H 5800 3800 50  0001 L CNN
	1    5800 3800
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A2C7F91
P 5550 3700
F 0 "R3" V 5630 3700 50  0000 C CNN
F 1 "1K" V 5550 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5480 3700 50  0001 C CNN
F 3 "" H 5550 3700 50  0001 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A2C7F97
P 6050 3700
F 0 "R7" V 6130 3700 50  0000 C CNN
F 1 "1K" V 6050 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5980 3700 50  0001 C CNN
F 3 "" H 6050 3700 50  0001 C CNN
	1    6050 3700
	1    0    0    -1  
$EndComp
Text GLabel 6050 3550 1    60   Input ~ 0
V5.0
Text GLabel 5550 3450 1    60   Input ~ 0
V3.3
Wire Wire Line
	5550 3850 5550 3900
Wire Wire Line
	5500 3900 5600 3900
Wire Wire Line
	6000 3900 6100 3900
Wire Wire Line
	6050 3900 6050 3850
Wire Wire Line
	5800 3600 5800 3500
Wire Wire Line
	5800 3500 5550 3500
Wire Wire Line
	5550 3450 5550 3550
Connection ~ 5550 3500
$Comp
L BSS138 Q4
U 1 1 5A2C7FA8
P 5800 4700
F 0 "Q4" H 6000 4775 50  0000 L CNN
F 1 "BSS138" H 6000 4700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6000 4625 50  0001 L CIN
F 3 "" H 5800 4700 50  0001 L CNN
	1    5800 4700
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A2C7FAE
P 5550 4600
F 0 "R4" V 5630 4600 50  0000 C CNN
F 1 "1K" V 5550 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5480 4600 50  0001 C CNN
F 3 "" H 5550 4600 50  0001 C CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A2C7FB4
P 6050 4600
F 0 "R8" V 6130 4600 50  0000 C CNN
F 1 "1K" V 6050 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5980 4600 50  0001 C CNN
F 3 "" H 6050 4600 50  0001 C CNN
	1    6050 4600
	1    0    0    -1  
$EndComp
Text GLabel 6050 4450 1    60   Input ~ 0
V5.0
Text GLabel 5550 4350 1    60   Input ~ 0
V3.3
Wire Wire Line
	5550 4750 5550 4800
Wire Wire Line
	5500 4800 5600 4800
Wire Wire Line
	6000 4800 6100 4800
Wire Wire Line
	6050 4800 6050 4750
Wire Wire Line
	5800 4500 5800 4400
Wire Wire Line
	5800 4400 5550 4400
Wire Wire Line
	5550 4350 5550 4450
Connection ~ 5550 4400
Text GLabel 5500 2100 0    60   Input ~ 0
PClock3.3
Text GLabel 5500 3000 0    60   Input ~ 0
PData3.3
Text GLabel 5500 3900 0    60   Input ~ 0
PEnable3.3
Text GLabel 5500 4800 0    60   Input ~ 0
PStrobe3.3
Text GLabel 6100 4800 2    60   Input ~ 0
PStrobe
Text GLabel 6100 2100 2    60   Input ~ 0
PClock
Text GLabel 6100 3000 2    60   Input ~ 0
PData
Text GLabel 6100 3900 2    60   Input ~ 0
PEnable
Connection ~ 6050 4800
Connection ~ 5550 4800
Connection ~ 5550 3900
Connection ~ 6050 3900
Connection ~ 6050 3000
Connection ~ 5550 3000
Connection ~ 5550 2100
Connection ~ 6050 2100
Text GLabel 3750 2750 2    60   Input ~ 0
PClock3.3
Text GLabel 3750 2950 2    60   Input ~ 0
PData3.3
Text GLabel 3750 3050 2    60   Input ~ 0
PEnable3.3
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
L Conn_01x06 J18
U 1 1 5A2CEC21
P 8725 3550
F 0 "J18" H 8725 3850 50  0000 C CNN
F 1 "Conn_01x06" H 8725 3150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 8725 3550 50  0001 C CNN
F 3 "" H 8725 3550 50  0001 C CNN
	1    8725 3550
	1    0    0    1   
$EndComp
Text GLabel 8525 3750 0    60   Input ~ 0
V5.0
Text GLabel 8525 3650 0    60   Input ~ 0
B
Text GLabel 8525 3550 0    60   Input ~ 0
C
Text GLabel 8525 3450 0    60   Input ~ 0
D
Text GLabel 8525 3350 0    60   Input ~ 0
E
Text GLabel 8525 3250 0    60   Input ~ 0
GND
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
Text GLabel 7650 4850 0    60   Input ~ 0
B
Text GLabel 7650 4750 0    60   Input ~ 0
C
Text GLabel 7650 4650 0    60   Input ~ 0
D
Text GLabel 7650 4550 0    60   Input ~ 0
E
Text GLabel 7650 4450 0    60   Input ~ 0
GND
$Comp
L Conn_01x06 J19
U 1 1 5A2CECEB
P 9025 4675
F 0 "J19" H 9025 4975 50  0000 C CNN
F 1 "Conn_01x06" H 9025 4275 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 9025 4675 50  0001 C CNN
F 3 "" H 9025 4675 50  0001 C CNN
	1    9025 4675
	1    0    0    1   
$EndComp
Text GLabel 8825 4875 0    60   Input ~ 0
V5.0
Text GLabel 8825 4775 0    60   Input ~ 0
PClockOut
Text GLabel 8825 4675 0    60   Input ~ 0
PDataOut
Text GLabel 8825 4575 0    60   Input ~ 0
PEnableOut
Text GLabel 8825 4475 0    60   Input ~ 0
PStrobeOut
Text GLabel 8825 4375 0    60   Input ~ 0
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
Text GLabel 3650 5650 0    60   Input ~ 0
VLED
Text GLabel 3650 5250 0    60   Input ~ 0
VLED
Text GLabel 3650 6050 0    60   Input ~ 0
GND
Text GLabel 3650 6450 0    60   Input ~ 0
GND
Text GLabel 3650 6850 0    60   Input ~ 0
V5.0
$Comp
L Conn_01x01 J12
U 1 1 5A2D0A2E
P 3850 5250
F 0 "J12" H 3850 5350 50  0000 C CNN
F 1 "Conn_01x01" H 3850 5150 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3850 5250 50  0001 C CNN
F 3 "" H 3850 5250 50  0001 C CNN
	1    3850 5250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J13
U 1 1 5A2D0A34
P 3850 5650
F 0 "J13" H 3850 5750 50  0000 C CNN
F 1 "Conn_01x01" H 3850 5550 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3850 5650 50  0001 C CNN
F 3 "" H 3850 5650 50  0001 C CNN
	1    3850 5650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J14
U 1 1 5A2D0A3A
P 3850 6050
F 0 "J14" H 3850 6150 50  0000 C CNN
F 1 "Conn_01x01" H 3850 5950 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3850 6050 50  0001 C CNN
F 3 "" H 3850 6050 50  0001 C CNN
	1    3850 6050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J15
U 1 1 5A2D0A40
P 3850 6450
F 0 "J15" H 3850 6550 50  0000 C CNN
F 1 "Conn_01x01" H 3850 6350 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3850 6450 50  0001 C CNN
F 3 "" H 3850 6450 50  0001 C CNN
	1    3850 6450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J16
U 1 1 5A2D0A46
P 3850 6850
F 0 "J16" H 3850 6950 50  0000 C CNN
F 1 "Conn_01x01" H 3850 6750 50  0000 C CNN
F 2 "MyKiCadParts:1217080-1" H 3850 6850 50  0001 C CNN
F 3 "" H 3850 6850 50  0001 C CNN
	1    3850 6850
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
$EndSCHEMATC
