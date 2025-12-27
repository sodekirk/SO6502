EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 2
Title "SO6502"
Date "2020-09-09"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PJ-002A:PJ-002A J1
U 1 1 5F597686
P 850 7000
F 0 "J1" H 845 7340 50  0000 C CNN
F 1 "PJ-002A" H 845 7249 50  0000 C CNN
F 2 "SO6502:CUI_PJ-002A" H 850 7000 50  0001 L BNN
F 3 "Manufacturer recommendations" H 850 7000 50  0001 L BNN
F 4 "CUI INC" H 850 7000 50  0001 L BNN "Field4"
	1    850  7000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5F59854A
P 1300 6950
F 0 "C1" H 1418 6996 50  0000 L CNN
F 1 "100uF" H 1418 6905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1338 6800 50  0001 C CNN
F 3 "~" H 1300 6950 50  0001 C CNN
	1    1300 6950
	1    0    0    -1  
$EndComp
Text Notes 900  6350 0    50   ~ 0
Power
$Comp
L SO6502:DS1813 U1
U 1 1 5F5A5409
P 3300 6850
F 0 "U1" H 3100 6650 50  0000 C CNN
F 1 "DS1813" H 3200 7050 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3550 7800 50  0001 C CNN
F 3 "" H 3550 7800 50  0001 C CNN
	1    3300 6850
	1    0    0    -1  
$EndComp
Text Notes 3900 6350 0    50   ~ 0
Reset
$Comp
L Switch:SW_Push SW1
U 1 1 5F5C237F
P 3700 7000
F 0 "SW1" V 3800 7100 50  0000 L CNN
F 1 "SW_Push" V 3745 7148 50  0001 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3700 7200 50  0001 C CNN
F 3 "~" H 3700 7200 50  0001 C CNN
	1    3700 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 6800 3700 6800
Connection ~ 3700 6800
$Comp
L 74xx:74HC00 U4
U 1 1 5F5D6C24
P 4450 6800
F 0 "U4" H 4450 7125 50  0000 C CNN
F 1 "74HC00" H 4450 7034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4450 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 4450 6800 50  0001 C CNN
	1    4450 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6800 4150 6800
Wire Wire Line
	4150 6700 4150 6800
Connection ~ 4150 6800
Wire Wire Line
	4150 6800 4150 6900
$Comp
L 74xx:74HC00 U4
U 2 1 5F5DA4EE
P 5350 6800
F 0 "U4" H 5350 7125 50  0000 C CNN
F 1 "74HC00" H 5350 7034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5350 6800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 5350 6800 50  0001 C CNN
	2    5350 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6800 4850 6800
Wire Wire Line
	5050 6700 5050 6800
Connection ~ 5050 6800
Wire Wire Line
	5050 6800 5050 6900
Text GLabel 5850 6800 2    50   Input ~ 0
RESB
Wire Wire Line
	5650 6800 5850 6800
Text GLabel 5850 7100 2    50   Input ~ 0
RESET
Wire Wire Line
	4850 6800 4850 7100
Wire Wire Line
	4850 7100 5850 7100
Connection ~ 4850 6800
Wire Wire Line
	4850 6800 5050 6800
$Comp
L SO6502:W65C02 U6
U 1 1 5F5C19C2
P 2150 2150
F 0 "U6" H 2150 3315 50  0000 C CNN
F 1 "W65C02" H 2150 3224 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
NoConn ~ 1700 1250
Text GLabel 1550 1350 0    50   Input ~ 0
RDY
NoConn ~ 1700 1450
Text GLabel 1550 1550 0    50   Input ~ 0
IRQB
NoConn ~ 1700 1650
NoConn ~ 1700 1850
Text GLabel 1550 2050 0    50   Input ~ 0
A0
Text GLabel 1550 2150 0    50   Input ~ 0
A1
Text GLabel 1550 2250 0    50   Input ~ 0
A2
Text GLabel 1550 2350 0    50   Input ~ 0
A3
Text GLabel 1550 2450 0    50   Input ~ 0
A4
Text GLabel 1550 2550 0    50   Input ~ 0
A5
Text GLabel 1550 2650 0    50   Input ~ 0
A6
Text GLabel 1550 2750 0    50   Input ~ 0
A7
Text GLabel 1550 2850 0    50   Input ~ 0
A8
Text GLabel 1550 2950 0    50   Input ~ 0
A9
Text GLabel 1550 3050 0    50   Input ~ 0
A10
Text GLabel 1550 3150 0    50   Input ~ 0
A11
Text GLabel 2750 3050 2    50   Input ~ 0
A12
Text GLabel 2750 2950 2    50   Input ~ 0
A13
Text GLabel 2750 2850 2    50   Input ~ 0
A14
Text GLabel 2750 2750 2    50   Input ~ 0
A15
Text GLabel 2750 1950 2    50   Input ~ 0
D0
Text GLabel 2750 2050 2    50   Input ~ 0
D1
Text GLabel 2750 2150 2    50   Input ~ 0
D2
Text GLabel 2750 2250 2    50   Input ~ 0
D3
Text GLabel 2750 2350 2    50   Input ~ 0
D4
Text GLabel 2750 2450 2    50   Input ~ 0
D5
Text GLabel 2750 2550 2    50   Input ~ 0
D6
Text GLabel 2750 2650 2    50   Input ~ 0
D7
Wire Wire Line
	2600 3050 2750 3050
Wire Wire Line
	2600 2950 2750 2950
Wire Wire Line
	2600 2850 2750 2850
Wire Wire Line
	2600 1950 2750 1950
Wire Wire Line
	2600 2050 2750 2050
Wire Wire Line
	2600 2150 2750 2150
Wire Wire Line
	2600 2250 2750 2250
Wire Wire Line
	2600 2350 2750 2350
Wire Wire Line
	2600 2450 2750 2450
Wire Wire Line
	2600 2550 2750 2550
Wire Wire Line
	2600 2650 2750 2650
Wire Wire Line
	2600 2750 2750 2750
Wire Wire Line
	1550 2050 1700 2050
Wire Wire Line
	1550 2150 1700 2150
Wire Wire Line
	1550 2250 1700 2250
Wire Wire Line
	1550 2350 1700 2350
Wire Wire Line
	1550 2450 1700 2450
Wire Wire Line
	1550 2550 1700 2550
Wire Wire Line
	1550 2650 1700 2650
Wire Wire Line
	1550 2750 1700 2750
Wire Wire Line
	1550 2850 1700 2850
Wire Wire Line
	1550 2950 1700 2950
Wire Wire Line
	1550 3050 1700 3050
Wire Wire Line
	1550 3150 1700 3150
Text GLabel 2750 1250 2    50   Input ~ 0
RESB
NoConn ~ 2600 1350
Text GLabel 2750 1550 2    50   Input ~ 0
PHI2
Text GLabel 2750 1850 2    50   Input ~ 0
RWB
Wire Wire Line
	2600 1850 2750 1850
Wire Wire Line
	2600 1550 2750 1550
Wire Wire Line
	2600 1250 2750 1250
Wire Wire Line
	1550 1350 1700 1350
Wire Wire Line
	1550 1550 1700 1550
Text GLabel 2750 1450 2    50   Input ~ 0
SOB
Text GLabel 2750 1650 2    50   Input ~ 0
BE
Text GLabel 1550 1750 0    50   Input ~ 0
NMIB
Wire Wire Line
	1550 1750 1700 1750
Wire Wire Line
	2600 1450 2750 1450
Wire Wire Line
	2600 1650 2750 1650
$Comp
L Device:R_Network07_US RN1
U 1 1 5F62F0A6
P 1450 4650
F 0 "RN1" V 933 4650 50  0000 C CNN
F 1 "R_Network07_US" V 1024 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP8" V 1925 4650 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1450 4650 50  0001 C CNN
	1    1450 4650
	0    -1   1    0   
$EndComp
Text GLabel 1800 4750 2    50   Input ~ 0
NMIB
Text GLabel 1800 4550 2    50   Input ~ 0
BE
Text GLabel 1800 4450 2    50   Input ~ 0
SOB
Text GLabel 1800 4650 2    50   Input ~ 0
RDY
Wire Wire Line
	1650 4450 1800 4450
Wire Wire Line
	1650 4550 1800 4550
Wire Wire Line
	1650 4650 1800 4650
Wire Wire Line
	1650 4750 1800 4750
Wire Wire Line
	1650 4850 1800 4850
$Comp
L Device:LED D1
U 1 1 5F63F81A
P 2150 4350
F 0 "D1" H 2200 4150 50  0000 R CNN
F 1 "LED" H 2200 4250 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2150 4350 50  0001 C CNN
F 3 "~" H 2150 4350 50  0001 C CNN
	1    2150 4350
	-1   0    0    1   
$EndComp
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 5F6552D8
P 3300 4450
F 0 "X1" H 3450 4850 50  0000 L CNN
F 1 "CXO_DIP8" H 3400 4750 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 3750 4100 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 3200 4450 50  0001 C CNN
	1    3300 4450
	1    0    0    -1  
$EndComp
NoConn ~ 3000 4450
Wire Wire Line
	3300 4750 3300 4850
Text GLabel 3750 4450 2    50   Input ~ 0
PHI2
Wire Wire Line
	3750 4450 3600 4450
Text GLabel 1800 4850 2    50   Input ~ 0
IRQ2B
$Comp
L SO6502:28C256 U9
U 1 1 5F728345
P 6400 1850
F 0 "U9" H 6425 2715 50  0000 C CNN
F 1 "28C256" H 6425 2624 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 6300 2700 50  0001 C CNN
F 3 "" H 6300 2700 50  0001 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1250 6950 1250
Wire Wire Line
	6000 2550 5850 2550
Text GLabel 5850 1250 0    50   Input ~ 0
A14
Text GLabel 5850 1350 0    50   Input ~ 0
A12
Text GLabel 5850 1450 0    50   Input ~ 0
A7
Text GLabel 5850 2150 0    50   Input ~ 0
A0
Text GLabel 5850 2050 0    50   Input ~ 0
A1
Text GLabel 5850 1950 0    50   Input ~ 0
A2
Text GLabel 5850 1850 0    50   Input ~ 0
A3
Text GLabel 5850 1750 0    50   Input ~ 0
A4
Text GLabel 5850 1650 0    50   Input ~ 0
A5
Text GLabel 5850 1550 0    50   Input ~ 0
A6
Text GLabel 5850 2250 0    50   Input ~ 0
D0
Text GLabel 5850 2350 0    50   Input ~ 0
D1
Text GLabel 5850 2450 0    50   Input ~ 0
D2
Text GLabel 7000 2550 2    50   Input ~ 0
D3
Text GLabel 7000 2450 2    50   Input ~ 0
D4
Text GLabel 7000 2350 2    50   Input ~ 0
D5
Text GLabel 7000 2250 2    50   Input ~ 0
D6
Text GLabel 7000 2150 2    50   Input ~ 0
D7
Wire Wire Line
	5850 1250 6000 1250
Wire Wire Line
	5850 1350 6000 1350
Wire Wire Line
	5850 1450 6000 1450
Wire Wire Line
	5850 1550 6000 1550
Wire Wire Line
	5850 1650 6000 1650
Wire Wire Line
	5850 1750 6000 1750
Wire Wire Line
	5850 1850 6000 1850
Wire Wire Line
	5850 1950 6000 1950
Wire Wire Line
	5850 2050 6000 2050
Wire Wire Line
	5850 2150 6000 2150
Wire Wire Line
	5850 2250 6000 2250
Wire Wire Line
	5850 2350 6000 2350
Wire Wire Line
	5850 2450 6000 2450
Wire Wire Line
	6850 2150 7000 2150
Wire Wire Line
	6850 2250 7000 2250
Wire Wire Line
	6850 2350 7000 2350
Wire Wire Line
	6850 2450 7000 2450
Wire Wire Line
	6850 2550 7000 2550
Text GLabel 7000 1450 2    50   Input ~ 0
A13
Text GLabel 7000 1550 2    50   Input ~ 0
A8
Text GLabel 7000 1650 2    50   Input ~ 0
A9
Text GLabel 7000 1950 2    50   Input ~ 0
A10
Text GLabel 7000 1750 2    50   Input ~ 0
A11
Wire Wire Line
	6850 1450 7000 1450
Wire Wire Line
	6850 1550 7000 1550
Wire Wire Line
	6850 1650 7000 1650
Wire Wire Line
	6850 1750 7000 1750
Wire Wire Line
	6850 1950 7000 1950
Text GLabel 7000 2050 2    50   Input ~ 0
CSROM
Wire Wire Line
	6850 2050 7000 2050
Text GLabel 7000 1850 2    50   Input ~ 0
RD
Wire Wire Line
	6850 1850 7000 1850
$Comp
L SO6502:71256SA U7
U 1 1 5F82879F
P 8300 1850
F 0 "U7" H 8325 2715 50  0000 C CNN
F 1 "71256SA" H 8325 2624 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 8200 2700 50  0001 C CNN
F 3 "" H 8200 2700 50  0001 C CNN
	1    8300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1250 8900 1250
Text GLabel 8900 2550 2    50   Input ~ 0
D3
Text GLabel 8900 2450 2    50   Input ~ 0
D4
Text GLabel 8900 2350 2    50   Input ~ 0
D5
Text GLabel 8900 2250 2    50   Input ~ 0
D6
Text GLabel 8900 2150 2    50   Input ~ 0
D7
Wire Wire Line
	8750 2150 8900 2150
Wire Wire Line
	8750 2250 8900 2250
Wire Wire Line
	8750 2350 8900 2350
Wire Wire Line
	8750 2450 8900 2450
Wire Wire Line
	8750 2550 8900 2550
Text GLabel 8900 1450 2    50   Input ~ 0
A13
Text GLabel 8900 1550 2    50   Input ~ 0
A8
Text GLabel 8900 1650 2    50   Input ~ 0
A9
Text GLabel 8900 1950 2    50   Input ~ 0
A10
Text GLabel 8900 1750 2    50   Input ~ 0
A11
Wire Wire Line
	8750 1450 8900 1450
Wire Wire Line
	8750 1550 8900 1550
Wire Wire Line
	8750 1650 8900 1650
Wire Wire Line
	8750 1750 8900 1750
Wire Wire Line
	8750 1950 8900 1950
Text GLabel 8900 2050 2    50   Input ~ 0
CSRAM
Wire Wire Line
	8750 2050 8900 2050
Text GLabel 8900 1850 2    50   Input ~ 0
RD
Wire Wire Line
	8750 1850 8900 1850
Wire Wire Line
	7900 2550 7750 2550
Text GLabel 7750 1250 0    50   Input ~ 0
A14
Text GLabel 7750 1350 0    50   Input ~ 0
A12
Text GLabel 7750 1450 0    50   Input ~ 0
A7
Text GLabel 7750 2150 0    50   Input ~ 0
A0
Text GLabel 7750 2050 0    50   Input ~ 0
A1
Text GLabel 7750 1950 0    50   Input ~ 0
A2
Text GLabel 7750 1850 0    50   Input ~ 0
A3
Text GLabel 7750 1750 0    50   Input ~ 0
A4
Text GLabel 7750 1650 0    50   Input ~ 0
A5
Text GLabel 7750 1550 0    50   Input ~ 0
A6
Text GLabel 7750 2250 0    50   Input ~ 0
D0
Text GLabel 7750 2350 0    50   Input ~ 0
D1
Text GLabel 7750 2450 0    50   Input ~ 0
D2
Wire Wire Line
	7750 1250 7900 1250
Wire Wire Line
	7750 1350 7900 1350
Wire Wire Line
	7750 1450 7900 1450
Wire Wire Line
	7750 1550 7900 1550
Wire Wire Line
	7750 1650 7900 1650
Wire Wire Line
	7750 1750 7900 1750
Wire Wire Line
	7750 1850 7900 1850
Wire Wire Line
	7750 1950 7900 1950
Wire Wire Line
	7750 2050 7900 2050
Wire Wire Line
	7750 2150 7900 2150
Wire Wire Line
	7750 2250 7900 2250
Wire Wire Line
	7750 2350 7900 2350
Wire Wire Line
	7750 2450 7900 2450
Text GLabel 8900 1350 2    50   Input ~ 0
WR
Wire Wire Line
	8750 1350 8900 1350
$Comp
L SO6502:ATF22V10 U2
U 1 1 5F849E1F
P 4200 1800
F 0 "U2" H 4225 2615 50  0000 C CNN
F 1 "ATF22V10" H 4225 2524 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket" H 3900 2450 50  0001 C CNN
F 3 "" H 3900 2450 50  0001 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
Text GLabel 3650 1250 0    50   Input ~ 0
PHI2
Text GLabel 3650 1350 0    50   Input ~ 0
RWB
Text GLabel 4800 2150 2    50   Input ~ 0
A4
Text GLabel 4800 2250 2    50   Input ~ 0
A5
Text GLabel 4800 2350 2    50   Input ~ 0
A6
Text GLabel 3650 2250 0    50   Input ~ 0
A7
Text GLabel 3650 2150 0    50   Input ~ 0
A8
Text GLabel 3650 2050 0    50   Input ~ 0
A9
Text GLabel 3650 1950 0    50   Input ~ 0
A10
Text GLabel 3650 1850 0    50   Input ~ 0
A11
Text GLabel 3650 1750 0    50   Input ~ 0
A12
Text GLabel 3650 1650 0    50   Input ~ 0
A13
Text GLabel 3650 1550 0    50   Input ~ 0
A14
Text GLabel 3650 1450 0    50   Input ~ 0
A15
Wire Wire Line
	4650 1250 4800 1250
Wire Wire Line
	3650 1250 3800 1250
Wire Wire Line
	3650 1350 3800 1350
Wire Wire Line
	3650 1450 3800 1450
Wire Wire Line
	3650 1550 3800 1550
Wire Wire Line
	3650 1650 3800 1650
Wire Wire Line
	3650 1750 3800 1750
Wire Wire Line
	3650 1850 3800 1850
Wire Wire Line
	3650 1950 3800 1950
Wire Wire Line
	3650 2050 3800 2050
Wire Wire Line
	3650 2150 3800 2150
Wire Wire Line
	3650 2250 3800 2250
Text GLabel 4800 1950 2    50   Input ~ 0
CSRAM
Text GLabel 4800 2050 2    50   Input ~ 0
CS2892
Text GLabel 4800 1750 2    50   Input ~ 0
CS6522
Text GLabel 4800 1850 2    50   Input ~ 0
CSROM
NoConn ~ 4650 1650
Text GLabel 4800 1550 2    50   Input ~ 0
RD
Text GLabel 4800 1450 2    50   Input ~ 0
WR
Text GLabel 4800 1350 2    50   Input ~ 0
RDY
Wire Wire Line
	4650 1350 4800 1350
Wire Wire Line
	4650 1450 4800 1450
Wire Wire Line
	4650 1550 4800 1550
Wire Wire Line
	4650 1750 4800 1750
Wire Wire Line
	4650 1850 4800 1850
Wire Wire Line
	4650 1950 4800 1950
Wire Wire Line
	4650 2050 4800 2050
Wire Wire Line
	4650 2150 4800 2150
Wire Wire Line
	4650 2250 4800 2250
Wire Wire Line
	4650 2350 4800 2350
$Sheet
S 4600 7600 500  150 
U 5F9DB731
F0 "IO" 50
F1 "IO.sch" 50
$EndSheet
$Comp
L 74xx:74HC00 U4
U 4 1 5FA03B1C
P 6100 4400
F 0 "U4" H 6100 4725 50  0000 C CNN
F 1 "74HC00" H 6100 4634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 6100 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 6100 4400 50  0001 C CNN
	4    6100 4400
	1    0    0    -1  
$EndComp
Text GLabel 4850 4300 0    50   Input ~ 0
IRQ1B
Text GLabel 4850 4500 0    50   Input ~ 0
IRQ2B
Wire Wire Line
	4850 4300 5000 4300
Wire Wire Line
	4850 4500 5000 4500
$Comp
L 74xx:74HC00 U4
U 3 1 5FA016AC
P 5300 4400
F 0 "U4" H 5300 4725 50  0000 C CNN
F 1 "74HC00" H 5300 4634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5300 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 5300 4400 50  0001 C CNN
	3    5300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4400 5800 4400
Wire Wire Line
	5800 4400 5800 4300
Wire Wire Line
	5800 4500 5800 4400
Connection ~ 5800 4400
Text GLabel 6550 4400 2    50   Input ~ 0
IRQB
Wire Wire Line
	6400 4400 6550 4400
$Comp
L 74xx:74HC00 U4
U 5 1 5FAE2875
P 5150 5450
F 0 "U4" H 5380 5496 50  0000 L CNN
F 1 "74HC00" H 5380 5405 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5150 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 5150 5450 50  0001 C CNN
	5    5150 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F65E894
P 8300 5600
F 0 "C9" H 8250 5350 50  0000 L CNN
F 1 "0.1uF" H 8250 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8338 5450 50  0001 C CNN
F 3 "~" H 8300 5600 50  0001 C CNN
	1    8300 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F65F959
P 8800 5600
F 0 "C11" H 8750 5350 50  0000 L CNN
F 1 "0.1uF" H 8750 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8838 5450 50  0001 C CNN
F 3 "~" H 8800 5600 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F660291
P 7300 5600
F 0 "C5" H 7250 5350 50  0000 L CNN
F 1 "0.1uF" H 7250 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7338 5450 50  0001 C CNN
F 3 "~" H 7300 5600 50  0001 C CNN
	1    7300 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F6605D6
P 6550 5600
F 0 "C2" H 6500 5350 50  0000 L CNN
F 1 "0.1uF" H 6500 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6588 5450 50  0001 C CNN
F 3 "~" H 6550 5600 50  0001 C CNN
	1    6550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5450 6550 5450
Connection ~ 6550 5450
Wire Wire Line
	6550 5450 6800 5450
Connection ~ 6800 5450
Wire Wire Line
	6800 5450 7050 5450
Connection ~ 7050 5450
Wire Wire Line
	7050 5450 7300 5450
Wire Wire Line
	6300 5750 6550 5750
Connection ~ 6550 5750
Wire Wire Line
	6550 5750 6800 5750
Connection ~ 6800 5750
Wire Wire Line
	6800 5750 7050 5750
Connection ~ 7050 5750
Wire Wire Line
	7050 5750 7300 5750
$Comp
L Device:C C3
U 1 1 5F69A1B0
P 6800 5600
F 0 "C3" H 6750 5350 50  0000 L CNN
F 1 "0.1uF" H 6750 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6838 5450 50  0001 C CNN
F 3 "~" H 6800 5600 50  0001 C CNN
	1    6800 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F69A557
P 7550 5600
F 0 "C6" H 7500 5350 50  0000 L CNN
F 1 "0.1uF" H 7500 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7588 5450 50  0001 C CNN
F 3 "~" H 7550 5600 50  0001 C CNN
	1    7550 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F69A8A0
P 7800 5600
F 0 "C7" H 7750 5350 50  0000 L CNN
F 1 "0.1uF" H 7750 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7838 5450 50  0001 C CNN
F 3 "~" H 7800 5600 50  0001 C CNN
	1    7800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5450 7550 5450
Connection ~ 7300 5450
Connection ~ 7550 5450
Connection ~ 7800 5450
Wire Wire Line
	7800 5450 8050 5450
Wire Wire Line
	7300 5750 7550 5750
Connection ~ 7300 5750
Connection ~ 7550 5750
Connection ~ 7800 5750
Wire Wire Line
	7800 5750 8050 5750
$Comp
L Device:C C10
U 1 1 5F6B8804
P 8550 5600
F 0 "C10" H 8500 5350 50  0000 L CNN
F 1 "0.1uF" H 8500 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8588 5450 50  0001 C CNN
F 3 "~" H 8550 5600 50  0001 C CNN
	1    8550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5450 8300 5450
Connection ~ 8050 5450
Wire Wire Line
	8050 5750 8300 5750
Connection ~ 8050 5750
$Comp
L Device:C C8
U 1 1 5F6E567E
P 8050 5600
F 0 "C8" H 8000 5350 50  0000 L CNN
F 1 "0.1uF" H 8000 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 8088 5450 50  0001 C CNN
F 3 "~" H 8050 5600 50  0001 C CNN
	1    8050 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5450 8550 5450
Connection ~ 8300 5450
Wire Wire Line
	8300 5750 8550 5750
Connection ~ 8300 5750
$Comp
L Mechanical:MountingHole H1
U 1 1 5F708F5D
P 8050 4150
F 0 "H1" H 8150 4196 50  0000 L CNN
F 1 "MountingHole" H 8150 4105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 8050 4150 50  0001 C CNN
F 3 "~" H 8050 4150 50  0001 C CNN
	1    8050 4150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F709BFC
P 8400 4150
F 0 "H3" H 8500 4196 50  0000 L CNN
F 1 "MountingHole" H 8500 4105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 8400 4150 50  0001 C CNN
F 3 "~" H 8400 4150 50  0001 C CNN
	1    8400 4150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F709D8F
P 8050 4450
F 0 "H2" H 8150 4496 50  0000 L CNN
F 1 "MountingHole" H 8150 4405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 8050 4450 50  0001 C CNN
F 3 "~" H 8050 4450 50  0001 C CNN
	1    8050 4450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F70A0A9
P 8400 4450
F 0 "H4" H 8500 4496 50  0000 L CNN
F 1 "MountingHole" H 8500 4405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 8400 4450 50  0001 C CNN
F 3 "~" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F725503
P 7050 5600
F 0 "C4" H 7000 5350 50  0000 L CNN
F 1 "0.1uF" H 7000 5250 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 7088 5450 50  0001 C CNN
F 3 "~" H 7050 5600 50  0001 C CNN
	1    7050 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5450 8800 5450
Connection ~ 8550 5450
Wire Wire Line
	8550 5750 8800 5750
Connection ~ 8550 5750
Text GLabel 1650 6800 2    50   Input ~ 0
Vcc
Wire Wire Line
	1650 6800 1300 6800
Connection ~ 1300 6800
Text GLabel 1650 7100 2    50   Input ~ 0
GND
Wire Wire Line
	1650 7100 1300 7100
Connection ~ 1300 7100
Wire Wire Line
	1050 7100 1300 7100
Wire Wire Line
	1050 7000 1050 7100
Connection ~ 1050 7100
Wire Wire Line
	1050 6900 1050 6800
Wire Wire Line
	1050 6800 1300 6800
Text GLabel 2850 6800 0    50   Input ~ 0
Vcc
Text GLabel 2850 6900 0    50   Input ~ 0
GND
Wire Wire Line
	2850 6900 2950 6900
Wire Wire Line
	2850 6800 2950 6800
Text GLabel 3700 7250 3    50   Input ~ 0
GND
Wire Wire Line
	3700 7250 3700 7200
Text GLabel 1100 4350 0    50   Input ~ 0
Vcc
Wire Wire Line
	1100 4350 1250 4350
Text GLabel 2450 4350 2    50   Input ~ 0
GND
Wire Wire Line
	2450 4350 2300 4350
Text GLabel 3300 4050 1    50   Input ~ 0
Vcc
Wire Wire Line
	3300 4050 3300 4150
Text GLabel 3300 4850 3    50   Input ~ 0
GND
Text GLabel 5150 4950 1    50   Input ~ 0
Vcc
Text GLabel 5150 5950 3    50   Input ~ 0
GND
Text GLabel 6300 5450 0    50   Input ~ 0
Vcc
Text GLabel 6300 5750 0    50   Input ~ 0
GND
Text GLabel 1550 1950 0    50   Input ~ 0
Vcc
Wire Wire Line
	1550 1950 1700 1950
Text GLabel 2750 3150 2    50   Input ~ 0
GND
Wire Wire Line
	2750 3150 2600 3150
Text GLabel 3650 2350 0    50   Input ~ 0
GND
Wire Wire Line
	3650 2350 3800 2350
Text GLabel 4800 1250 2    50   Input ~ 0
Vcc
Text GLabel 7000 1250 2    50   Input ~ 0
Vcc
Wire Wire Line
	6850 1350 6950 1350
Wire Wire Line
	6950 1350 6950 1250
Connection ~ 6950 1250
Wire Wire Line
	6950 1250 7000 1250
Text GLabel 5850 2550 0    50   Input ~ 0
GND
Text GLabel 7750 2550 0    50   Input ~ 0
GND
Text GLabel 8900 1250 2    50   Input ~ 0
Vcc
NoConn ~ 1650 4950
Wire Wire Line
	1650 4350 2000 4350
Wire Wire Line
	7550 5750 7800 5750
Wire Wire Line
	7550 5450 7800 5450
$EndSCHEMATC
