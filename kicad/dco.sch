EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Polykit DCO"
Date "2021-01-03"
Rev "v0.0.2"
Comp "Jan Knipper"
Comment1 "github.com/polykit/dco"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5FF1C16E
P 9300 3950
F 0 "A?" H 9300 2861 50  0000 C CNN
F 1 "Arduino Nano 328p 16Mhz" H 9300 2770 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 9300 3950 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 9300 3950 50  0001 C CNN
	1    9300 3950
	1    0    0    -1  
$EndComp
Text GLabel 8500 4250 0    50   Input ~ 0
RESET
Wire Wire Line
	8800 4250 8500 4250
$Comp
L Analog_DAC:MCP4728 U?
U 1 1 5FF43569
P 4350 1900
F 0 "U?" H 4350 1319 50  0000 C CNN
F 1 "MCP4728" H 4350 1410 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 4350 1300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22187E.pdf" H 4350 2150 50  0001 C CNN
	1    4350 1900
	-1   0    0    1   
$EndComp
Text GLabel 4350 2350 3    50   Input ~ 0
+5V
Text GLabel 9500 2800 1    50   Input ~ 0
+5V
Wire Wire Line
	9500 2950 9500 2800
Wire Wire Line
	4350 2200 4350 2350
$Comp
L power:GND #PWR?
U 1 1 5FF47ADE
P 4100 1200
F 0 "#PWR?" H 4100 950 50  0001 C CNN
F 1 "GND" H 4105 1027 50  0000 C CNN
F 2 "" H 4100 1200 50  0001 C CNN
F 3 "" H 4100 1200 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1500 4350 1150
Wire Wire Line
	4350 1150 4100 1150
Wire Wire Line
	4100 1150 4100 1200
Text GLabel 3600 2000 0    50   Input ~ 0
DAC_A
Wire Wire Line
	3750 2000 3600 2000
Text GLabel 5150 1900 2    50   Input ~ 0
SDA
Text GLabel 5150 2000 2    50   Input ~ 0
SCL
Wire Wire Line
	4950 1900 5150 1900
Wire Wire Line
	4950 2000 5150 2000
Text GLabel 10100 4350 2    50   Input ~ 0
SDA
Text GLabel 10100 4450 2    50   Input ~ 0
SCL
Wire Wire Line
	10100 4350 9800 4350
Wire Wire Line
	10100 4450 9800 4450
$Comp
L Device:C C?
U 1 1 5FF25575
P 7900 2050
F 0 "C?" H 8015 2096 50  0000 L CNN
F 1 "100n" H 8015 2005 50  0000 L CNN
F 2 "" H 7938 1900 50  0001 C CNN
F 3 "~" H 7900 2050 50  0001 C CNN
	1    7900 2050
	1    0    0    -1  
$EndComp
Text GLabel 6600 1900 0    50   Input ~ 0
CV_IN
Text GLabel 8350 1900 2    50   Input ~ 0
CV
Text GLabel 10100 3950 2    50   Input ~ 0
CV
Wire Wire Line
	9800 3950 10100 3950
Connection ~ 7900 1900
$Comp
L Device:R R?
U 1 1 5FF2CD4C
P 6950 1900
F 0 "R?" V 6743 1900 50  0000 C CNN
F 1 "10k" V 6834 1900 50  0000 C CNN
F 2 "" V 6880 1900 50  0001 C CNN
F 3 "~" H 6950 1900 50  0001 C CNN
	1    6950 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 1900 6600 1900
$Comp
L power:GND #PWR?
U 1 1 5FF312D7
P 7900 2300
F 0 "#PWR?" H 7900 2050 50  0001 C CNN
F 1 "GND" H 7905 2127 50  0000 C CNN
F 2 "" H 7900 2300 50  0001 C CNN
F 3 "" H 7900 2300 50  0001 C CNN
	1    7900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2200 7900 2300
Wire Wire Line
	5200 5450 5200 5800
Wire Wire Line
	5200 6100 5200 6400
Wire Wire Line
	5850 6400 5850 6300
$Comp
L power:GND #PWR?
U 1 1 5FFA3D4F
P 5850 6400
F 0 "#PWR?" H 5850 6150 50  0001 C CNN
F 1 "GND" H 5855 6227 50  0000 C CNN
F 2 "" H 5850 6400 50  0001 C CNN
F 3 "" H 5850 6400 50  0001 C CNN
	1    5850 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5450 5900 5450
Connection ~ 5850 6000
Wire Wire Line
	5850 5650 5900 5650
Wire Wire Line
	5850 6000 5850 5650
Wire Wire Line
	6050 6000 5850 6000
Connection ~ 6500 5550
Wire Wire Line
	6500 6000 6350 6000
Wire Wire Line
	6500 5550 6500 6000
$Comp
L Device:R R?
U 1 1 5FF9ED37
P 5850 6150
F 0 "R?" H 5780 6104 50  0000 R CNN
F 1 "100k" H 5780 6195 50  0000 R CNN
F 2 "" V 5780 6150 50  0001 C CNN
F 3 "~" H 5850 6150 50  0001 C CNN
	1    5850 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF94A81
P 6200 6000
F 0 "R?" H 6130 5954 50  0000 R CNN
F 1 "100k" H 6130 6045 50  0000 R CNN
F 2 "" V 6130 6000 50  0001 C CNN
F 3 "~" H 6200 6000 50  0001 C CNN
	1    6200 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 5200 1700 5200
Wire Wire Line
	2100 5200 2450 5200
Wire Wire Line
	6500 5550 6600 5550
Connection ~ 3050 5100
Wire Wire Line
	3050 5500 2900 5500
Wire Wire Line
	3050 5100 3050 5500
Connection ~ 2450 5200
Wire Wire Line
	2450 5500 2600 5500
Wire Wire Line
	2450 5200 2450 5500
$Comp
L Device:R R?
U 1 1 5FF584A5
P 2750 5500
F 0 "R?" V 2543 5500 50  0000 C CNN
F 1 "100k" V 2634 5500 50  0000 C CNN
F 2 "" V 2680 5500 50  0001 C CNN
F 3 "~" H 2750 5500 50  0001 C CNN
	1    2750 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FF5710C
P 1950 5200
F 0 "R?" V 1743 5200 50  0000 C CNN
F 1 "100k" V 1834 5200 50  0000 C CNN
F 2 "" V 1880 5200 50  0001 C CNN
F 3 "~" H 1950 5200 50  0001 C CNN
	1    1950 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 4900 3700 5550
Connection ~ 3800 5100
Wire Wire Line
	3550 5100 3800 5100
Wire Wire Line
	3850 4900 3700 4900
Connection ~ 3800 4400
Wire Wire Line
	3800 4400 3800 5100
Wire Wire Line
	3050 5100 3250 5100
Wire Wire Line
	2350 5000 2350 5550
Wire Wire Line
	2450 5000 2350 5000
$Comp
L power:GND #PWR?
U 1 1 5FF4B953
P 2350 5550
F 0 "#PWR?" H 2350 5300 50  0001 C CNN
F 1 "GND" H 2355 5377 50  0000 C CNN
F 2 "" H 2350 5550 50  0001 C CNN
F 3 "" H 2350 5550 50  0001 C CNN
	1    2350 5550
	1    0    0    -1  
$EndComp
Text GLabel 1700 5200 0    50   Input ~ 0
DAC_A
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 5FF49850
P 2750 5100
F 0 "U?" H 2750 5467 50  0000 C CNN
F 1 "TL074" H 2750 5376 50  0000 C CNN
F 2 "" H 2700 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2800 5300 50  0001 C CNN
	3    2750 5100
	1    0    0    -1  
$EndComp
Text GLabel 2500 3250 0    50   Input ~ 0
RESET
Wire Wire Line
	7050 5550 6900 5550
Text GLabel 7050 5550 2    50   Input ~ 0
RAMP_OUT
$Comp
L power:GND #PWR?
U 1 1 5FF3DBF2
P 5200 6400
F 0 "#PWR?" H 5200 6150 50  0001 C CNN
F 1 "GND" H 5205 6227 50  0000 C CNN
F 2 "" H 5200 6400 50  0001 C CNN
F 3 "" H 5200 6400 50  0001 C CNN
	1    5200 6400
	1    0    0    -1  
$EndComp
Connection ~ 5200 5450
Wire Wire Line
	5100 5450 5200 5450
$Comp
L Device:R R?
U 1 1 5FF3B67A
P 6750 5550
F 0 "R?" V 6543 5550 50  0000 C CNN
F 1 "1k" V 6634 5550 50  0000 C CNN
F 2 "" V 6680 5550 50  0001 C CNN
F 3 "~" H 6750 5550 50  0001 C CNN
	1    6750 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FF3A969
P 5200 5950
F 0 "R?" H 5130 5904 50  0000 R CNN
F 1 "100k" H 5130 5995 50  0000 R CNN
F 2 "" V 5130 5950 50  0001 C CNN
F 3 "~" H 5200 5950 50  0001 C CNN
	1    5200 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C?
U 1 1 5FF39C80
P 4950 5450
F 0 "C?" V 5205 5450 50  0000 C CNN
F 1 "10u" V 5114 5450 50  0000 C CNN
F 2 "" H 4988 5300 50  0001 C CNN
F 3 "~" H 4950 5450 50  0001 C CNN
	1    4950 5450
	0    -1   -1   0   
$EndComp
Connection ~ 4500 5000
Wire Wire Line
	4500 5450 4800 5450
Wire Wire Line
	4500 5000 4500 5450
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 5FF3687F
P 6200 5550
F 0 "U?" H 6200 5917 50  0000 C CNN
F 1 "TL074" H 6200 5826 50  0000 C CNN
F 2 "" H 6150 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6250 5750 50  0001 C CNN
	2    6200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3900 4500 3700
Connection ~ 4500 4400
Wire Wire Line
	4500 4400 4500 4200
Wire Wire Line
	3800 3700 3800 4400
Wire Wire Line
	3850 5100 3800 5100
$Comp
L power:GND #PWR?
U 1 1 5FF2F5EF
P 3700 5550
F 0 "#PWR?" H 3700 5300 50  0001 C CNN
F 1 "GND" H 3705 5377 50  0000 C CNN
F 2 "" H 3700 5550 50  0001 C CNN
F 3 "" H 3700 5550 50  0001 C CNN
	1    3700 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF2E00C
P 3400 5100
F 0 "R?" V 3193 5100 50  0000 C CNN
F 1 "100k" V 3284 5100 50  0000 C CNN
F 2 "" V 3330 5100 50  0001 C CNN
F 3 "~" H 3400 5100 50  0001 C CNN
	1    3400 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 5000 4500 4400
Wire Wire Line
	4450 5000 4500 5000
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5FF2AFD9
P 4150 5000
F 0 "U?" H 4150 5367 50  0000 C CNN
F 1 "TL074" H 4150 5276 50  0000 C CNN
F 2 "" H 4100 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4200 5200 50  0001 C CNN
	1    4150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3250 2800 3250
Wire Wire Line
	3300 3650 3300 3750
Wire Wire Line
	3300 3250 3500 3250
Connection ~ 3300 3250
Wire Wire Line
	3300 3350 3300 3250
Wire Wire Line
	3100 3250 3300 3250
$Comp
L power:GND #PWR?
U 1 1 5FF28D27
P 3300 3750
F 0 "#PWR?" H 3300 3500 50  0001 C CNN
F 1 "GND" H 3305 3577 50  0000 C CNN
F 2 "" H 3300 3750 50  0001 C CNN
F 3 "" H 3300 3750 50  0001 C CNN
	1    3300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4400 4000 4400
Wire Wire Line
	3950 3700 3800 3700
Wire Wire Line
	4500 4400 4300 4400
Wire Wire Line
	4350 3700 4500 3700
Wire Wire Line
	4150 3250 4150 3400
Wire Wire Line
	3800 3250 4150 3250
$Comp
L Device:C C?
U 1 1 5FF24F60
P 2950 3250
F 0 "C?" V 2698 3250 50  0000 C CNN
F 1 "470p" V 2789 3250 50  0000 C CNN
F 2 "" H 2988 3100 50  0001 C CNN
F 3 "~" H 2950 3250 50  0001 C CNN
	1    2950 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FF249AF
P 3300 3500
F 0 "R?" H 3370 3546 50  0000 L CNN
F 1 "10k" H 3370 3455 50  0000 L CNN
F 2 "" V 3230 3500 50  0001 C CNN
F 3 "~" H 3300 3500 50  0001 C CNN
	1    3300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF23CC8
P 3650 3250
F 0 "R?" V 3443 3250 50  0000 C CNN
F 1 "1k" V 3534 3250 50  0000 C CNN
F 2 "" V 3580 3250 50  0001 C CNN
F 3 "~" H 3650 3250 50  0001 C CNN
	1    3650 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FF232BE
P 4500 4050
F 0 "R?" H 4570 4096 50  0000 L CNN
F 1 "2k2" H 4570 4005 50  0000 L CNN
F 2 "" V 4430 4050 50  0001 C CNN
F 3 "~" H 4500 4050 50  0001 C CNN
	1    4500 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF21EE5
P 4150 4400
F 0 "C?" V 3898 4400 50  0000 C CNN
F 1 "1n" V 3989 4400 50  0000 C CNN
F 2 "" H 4188 4250 50  0001 C CNN
F 3 "~" H 4150 4400 50  0001 C CNN
	1    4150 4400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5FF20D59
P 4150 3600
F 0 "Q?" V 4385 3600 50  0000 C CNN
F 1 "2N3904" V 4476 3600 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4350 3525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 4150 3600 50  0001 L CNN
	1    4150 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 1900 8350 1900
Wire Wire Line
	7100 1900 7400 1900
$Comp
L Diode:1N4148 D?
U 1 1 5FF77619
P 7400 2050
F 0 "D?" V 7354 2130 50  0000 L CNN
F 1 "1N4148" V 7445 2130 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7400 1875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7400 2050 50  0001 C CNN
	1    7400 2050
	0    1    1    0   
$EndComp
Connection ~ 7400 1900
Wire Wire Line
	7400 1900 7650 1900
$Comp
L Diode:1N4148 D?
U 1 1 5FF7A5F7
P 7650 1750
F 0 "D?" V 7604 1830 50  0000 L CNN
F 1 "1N4148" V 7695 1830 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7650 1575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7650 1750 50  0001 C CNN
	1    7650 1750
	0    1    1    0   
$EndComp
Connection ~ 7650 1900
Wire Wire Line
	7650 1900 7900 1900
$Comp
L power:GND #PWR?
U 1 1 5FF7DEF9
P 7400 2300
F 0 "#PWR?" H 7400 2050 50  0001 C CNN
F 1 "GND" H 7405 2127 50  0000 C CNN
F 2 "" H 7400 2300 50  0001 C CNN
F 3 "" H 7400 2300 50  0001 C CNN
	1    7400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2200 7400 2300
Text GLabel 7650 1450 1    50   Input ~ 0
+5V
Wire Wire Line
	7650 1600 7650 1450
$EndSCHEMATC
