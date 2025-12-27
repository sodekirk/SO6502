EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 2
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
L SO6502:W65C22 U?
U 1 1 5F9DF0D3
P 2100 1950
AR Path="/5F9DF0D3" Ref="U?"  Part="1" 
AR Path="/5F9DB731/5F9DF0D3" Ref="U7"  Part="1" 
F 0 "U7" H 2100 3115 50  0000 C CNN
F 1 "W65C22" H 2100 3024 50  0000 C CNN
F 2 "" H 2100 3150 50  0001 C CNN
F 3 "" H 2100 3150 50  0001 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
Text GLabel 1500 1150 0    50   Input ~ 0
PA0
Text GLabel 1500 1250 0    50   Input ~ 0
PA1
Text GLabel 1500 1350 0    50   Input ~ 0
PA2
Text GLabel 1500 1450 0    50   Input ~ 0
PA3
Text GLabel 1500 1550 0    50   Input ~ 0
PA4
Text GLabel 1500 1650 0    50   Input ~ 0
PA5
Text GLabel 1500 1750 0    50   Input ~ 0
PA6
Text GLabel 1500 1850 0    50   Input ~ 0
PA7
Text GLabel 1500 1950 0    50   Input ~ 0
PB0
Text GLabel 1500 2050 0    50   Input ~ 0
PB1
Text GLabel 1500 2150 0    50   Input ~ 0
PB2
Text GLabel 1500 2250 0    50   Input ~ 0
PB3
Text GLabel 1500 2350 0    50   Input ~ 0
PB4
Text GLabel 1500 2450 0    50   Input ~ 0
PB5
Text GLabel 1500 2550 0    50   Input ~ 0
PB6
Text GLabel 1500 2650 0    50   Input ~ 0
PB7
Text GLabel 1500 2750 0    50   Input ~ 0
CB1
Text GLabel 1500 2850 0    50   Input ~ 0
CB2
Text GLabel 2700 1050 2    50   Input ~ 0
CA1
Text GLabel 2700 1150 2    50   Input ~ 0
CA2
Text GLabel 2700 1250 2    50   Input ~ 0
A0
Text GLabel 2700 1350 2    50   Input ~ 0
A1
Text GLabel 2700 1450 2    50   Input ~ 0
A2
Text GLabel 2700 1550 2    50   Input ~ 0
A3
Text GLabel 2700 1650 2    50   Input ~ 0
RESB
Text GLabel 2700 1750 2    50   Input ~ 0
D0
Text GLabel 2700 1850 2    50   Input ~ 0
D1
Text GLabel 2700 1950 2    50   Input ~ 0
D2
Text GLabel 2700 2050 2    50   Input ~ 0
D3
Text GLabel 2700 2150 2    50   Input ~ 0
D4
Text GLabel 2700 2250 2    50   Input ~ 0
D5
Text GLabel 2700 2350 2    50   Input ~ 0
D6
Text GLabel 2700 2450 2    50   Input ~ 0
D7
Text GLabel 2700 2550 2    50   Input ~ 0
PHI2
Wire Wire Line
	1500 1150 1650 1150
Wire Wire Line
	1500 1250 1650 1250
Wire Wire Line
	1500 1350 1650 1350
Wire Wire Line
	1500 1450 1650 1450
Wire Wire Line
	1500 1550 1650 1550
Wire Wire Line
	1500 1650 1650 1650
Wire Wire Line
	1500 1750 1650 1750
Wire Wire Line
	1500 1850 1650 1850
Wire Wire Line
	1500 1950 1650 1950
Wire Wire Line
	1500 2050 1650 2050
Wire Wire Line
	1500 2150 1650 2150
Wire Wire Line
	1500 2250 1650 2250
Wire Wire Line
	1500 2350 1650 2350
Wire Wire Line
	1500 2450 1650 2450
Wire Wire Line
	1500 2550 1650 2550
Wire Wire Line
	1500 2650 1650 2650
Wire Wire Line
	1500 2750 1650 2750
Wire Wire Line
	1500 2850 1650 2850
Wire Wire Line
	2550 1050 2700 1050
Wire Wire Line
	2550 1150 2700 1150
Wire Wire Line
	2550 1250 2700 1250
Wire Wire Line
	2550 1350 2700 1350
Wire Wire Line
	2550 1450 2700 1450
Wire Wire Line
	2550 1550 2700 1550
Wire Wire Line
	2550 1650 2700 1650
Wire Wire Line
	2550 1750 2700 1750
Wire Wire Line
	2550 1850 2700 1850
Wire Wire Line
	2550 1950 2700 1950
Wire Wire Line
	2550 2050 2700 2050
Wire Wire Line
	2550 2150 2700 2150
Wire Wire Line
	2550 2250 2700 2250
Wire Wire Line
	2550 2350 2700 2350
Wire Wire Line
	2550 2450 2700 2450
Wire Wire Line
	2550 2550 2700 2550
Text GLabel 2700 2850 2    50   Input ~ 0
RWB
Wire Wire Line
	2550 2850 2700 2850
Text GLabel 2700 2950 2    50   Input ~ 0
IRQ1B
Wire Wire Line
	2550 2950 2700 2950
$Comp
L power:GND #PWR?
U 1 1 5F9DF121
P 1050 1150
AR Path="/5F9DF121" Ref="#PWR?"  Part="1" 
AR Path="/5F9DB731/5F9DF121" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 1050 900 50  0001 C CNN
F 1 "GND" H 1055 977 50  0000 C CNN
F 2 "" H 1050 1150 50  0001 C CNN
F 3 "" H 1050 1150 50  0001 C CNN
	1    1050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1150 1050 1050
Wire Wire Line
	1050 1050 1650 1050
$Comp
L power:+5V #PWR?
U 1 1 5F9DF129
P 1050 2800
AR Path="/5F9DF129" Ref="#PWR?"  Part="1" 
AR Path="/5F9DB731/5F9DF129" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 1050 2650 50  0001 C CNN
F 1 "+5V" H 1065 2973 50  0000 C CNN
F 2 "" H 1050 2800 50  0001 C CNN
F 3 "" H 1050 2800 50  0001 C CNN
	1    1050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2800 1050 2950
Wire Wire Line
	1050 2950 1650 2950
Text GLabel 2700 2750 2    50   Input ~ 0
CS6522
Wire Wire Line
	2550 2750 2700 2750
$Comp
L power:+5V #PWR?
U 1 1 5F9DF133
P 3100 2500
AR Path="/5F9DF133" Ref="#PWR?"  Part="1" 
AR Path="/5F9DB731/5F9DF133" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 3100 2350 50  0001 C CNN
F 1 "+5V" H 3115 2673 50  0000 C CNN
F 2 "" H 3100 2500 50  0001 C CNN
F 3 "" H 3100 2500 50  0001 C CNN
	1    3100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2650 3100 2650
Wire Wire Line
	3100 2650 3100 2500
$Comp
L Connector:Conn_01x10_Female J?
U 1 1 5FAAFB26
P 4300 1450
F 0 "J?" H 3850 2100 50  0000 L CNN
F 1 "Conn_01x10_Female" H 3750 2000 50  0000 L CNN
F 2 "" H 4300 1450 50  0001 C CNN
F 3 "~" H 4300 1450 50  0001 C CNN
	1    4300 1450
	1    0    0    -1  
$EndComp
Text GLabel 3950 1050 0    50   Input ~ 0
PA0
Text GLabel 3950 1150 0    50   Input ~ 0
PA1
Text GLabel 3950 1250 0    50   Input ~ 0
PA2
Text GLabel 3950 1350 0    50   Input ~ 0
PA3
Text GLabel 3950 1450 0    50   Input ~ 0
PA4
Text GLabel 3950 1550 0    50   Input ~ 0
PA5
Text GLabel 3950 1650 0    50   Input ~ 0
PA6
Text GLabel 3950 1750 0    50   Input ~ 0
PA7
Text GLabel 3950 1850 0    50   Input ~ 0
CA1
Text GLabel 3950 1950 0    50   Input ~ 0
CA2
Wire Wire Line
	3950 1050 4100 1050
Wire Wire Line
	3950 1150 4100 1150
Wire Wire Line
	3950 1250 4100 1250
Wire Wire Line
	3950 1350 4100 1350
Wire Wire Line
	3950 1450 4100 1450
Wire Wire Line
	3950 1550 4100 1550
Wire Wire Line
	3950 1650 4100 1650
Wire Wire Line
	3950 1750 4100 1750
Wire Wire Line
	3950 1850 4100 1850
Wire Wire Line
	3950 1950 4100 1950
$Comp
L Connector:Conn_01x10_Female J?
U 1 1 5FAC95FD
P 4300 2800
F 0 "J?" H 3850 3450 50  0000 L CNN
F 1 "Conn_01x10_Female" H 3750 3350 50  0000 L CNN
F 2 "" H 4300 2800 50  0001 C CNN
F 3 "~" H 4300 2800 50  0001 C CNN
	1    4300 2800
	1    0    0    -1  
$EndComp
Text GLabel 3950 2400 0    50   Input ~ 0
PB0
Text GLabel 3950 2500 0    50   Input ~ 0
PB1
Text GLabel 3950 2600 0    50   Input ~ 0
PB2
Text GLabel 3950 2700 0    50   Input ~ 0
PB3
Text GLabel 3950 2800 0    50   Input ~ 0
PB4
Text GLabel 3950 2900 0    50   Input ~ 0
PB5
Text GLabel 3950 3000 0    50   Input ~ 0
PB6
Text GLabel 3950 3100 0    50   Input ~ 0
PB7
Text GLabel 3950 3200 0    50   Input ~ 0
CB0
Text GLabel 3950 3300 0    50   Input ~ 0
CB1
Wire Wire Line
	3950 2400 4100 2400
Wire Wire Line
	3950 2500 4100 2500
Wire Wire Line
	3950 2600 4100 2600
Wire Wire Line
	3950 2700 4100 2700
Wire Wire Line
	3950 2800 4100 2800
Wire Wire Line
	3950 2900 4100 2900
Wire Wire Line
	3950 3000 4100 3000
Wire Wire Line
	3950 3100 4100 3100
Wire Wire Line
	3950 3200 4100 3200
Wire Wire Line
	3950 3300 4100 3300
$EndSCHEMATC
