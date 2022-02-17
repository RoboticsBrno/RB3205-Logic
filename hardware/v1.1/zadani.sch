EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 17
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
L LED:WS2812B D?
U 1 1 5FB77606
P 3000 1500
AR Path="/5FB77606" Ref="D?"  Part="1" 
AR Path="/5F70D6B6/5FB77606" Ref="D?"  Part="1" 
AR Path="/5FB682DC/5FB77606" Ref="D?"  Part="1" 
F 0 "D?" H 3344 1546 50  0000 L CNN
F 1 "WS2812B" H 3344 1455 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3050 1200 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3100 1125 50  0001 L TNN
	1    3000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB7760C
P 3000 1900
AR Path="/5FB7760C" Ref="#PWR?"  Part="1" 
AR Path="/5F70D6B6/5FB7760C" Ref="#PWR?"  Part="1" 
AR Path="/5FB682DC/5FB7760C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 1650 50  0001 C CNN
F 1 "GND" H 3005 1727 50  0000 C CNN
F 2 "" H 3000 1900 50  0001 C CNN
F 3 "" H 3000 1900 50  0001 C CNN
	1    3000 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FB77618
P 3550 1300
AR Path="/5FB77618" Ref="C?"  Part="1" 
AR Path="/5F70D6B6/5FB77618" Ref="C?"  Part="1" 
AR Path="/5FB682DC/5FB77618" Ref="C?"  Part="1" 
F 0 "C?" H 3665 1346 50  0000 L CNN
F 1 "100n" H 3665 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3588 1150 50  0001 C CNN
F 3 "~" H 3550 1300 50  0001 C CNN
	1    3550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1100 3550 1150
Wire Wire Line
	3000 1100 3550 1100
Wire Wire Line
	3550 1450 3550 1800
Wire Wire Line
	3550 1800 3000 1800
Wire Wire Line
	3000 1900 3000 1800
Connection ~ 3000 1800
Wire Wire Line
	3000 1200 3000 1100
$Comp
L LED:WS2812B D?
U 1 1 5FB77626
P 4300 1500
AR Path="/5FB77626" Ref="D?"  Part="1" 
AR Path="/5F70D6B6/5FB77626" Ref="D?"  Part="1" 
AR Path="/5FB682DC/5FB77626" Ref="D?"  Part="1" 
F 0 "D?" H 4644 1546 50  0000 L CNN
F 1 "WS2812B" H 4644 1455 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4350 1200 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4400 1125 50  0001 L TNN
	1    4300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB7762C
P 4300 1900
AR Path="/5FB7762C" Ref="#PWR?"  Part="1" 
AR Path="/5F70D6B6/5FB7762C" Ref="#PWR?"  Part="1" 
AR Path="/5FB682DC/5FB7762C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 1650 50  0001 C CNN
F 1 "GND" H 4305 1727 50  0000 C CNN
F 2 "" H 4300 1900 50  0001 C CNN
F 3 "" H 4300 1900 50  0001 C CNN
	1    4300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FB77638
P 4850 1300
AR Path="/5FB77638" Ref="C?"  Part="1" 
AR Path="/5F70D6B6/5FB77638" Ref="C?"  Part="1" 
AR Path="/5FB682DC/5FB77638" Ref="C?"  Part="1" 
F 0 "C?" H 4965 1346 50  0000 L CNN
F 1 "100n" H 4965 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4888 1150 50  0001 C CNN
F 3 "~" H 4850 1300 50  0001 C CNN
	1    4850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1100 4850 1150
Wire Wire Line
	4300 1100 4850 1100
Wire Wire Line
	4850 1450 4850 1800
Wire Wire Line
	4850 1800 4300 1800
Wire Wire Line
	4300 1900 4300 1800
Connection ~ 4300 1800
Wire Wire Line
	4300 1200 4300 1100
Connection ~ 4300 1100
$Comp
L LED:WS2812B D?
U 1 1 5FB77646
P 5700 1500
AR Path="/5FB77646" Ref="D?"  Part="1" 
AR Path="/5F70D6B6/5FB77646" Ref="D?"  Part="1" 
AR Path="/5FB682DC/5FB77646" Ref="D?"  Part="1" 
F 0 "D?" H 6044 1546 50  0000 L CNN
F 1 "WS2812B" H 6044 1455 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5750 1200 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5800 1125 50  0001 L TNN
	1    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB7764C
P 5700 1900
AR Path="/5FB7764C" Ref="#PWR?"  Part="1" 
AR Path="/5F70D6B6/5FB7764C" Ref="#PWR?"  Part="1" 
AR Path="/5FB682DC/5FB7764C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 1650 50  0001 C CNN
F 1 "GND" H 5705 1727 50  0000 C CNN
F 2 "" H 5700 1900 50  0001 C CNN
F 3 "" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FB77658
P 6250 1300
AR Path="/5FB77658" Ref="C?"  Part="1" 
AR Path="/5F70D6B6/5FB77658" Ref="C?"  Part="1" 
AR Path="/5FB682DC/5FB77658" Ref="C?"  Part="1" 
F 0 "C?" H 6365 1346 50  0000 L CNN
F 1 "100n" H 6365 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6288 1150 50  0001 C CNN
F 3 "~" H 6250 1300 50  0001 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1100 6250 1150
Wire Wire Line
	5700 1100 6250 1100
Wire Wire Line
	6250 1450 6250 1800
Wire Wire Line
	6250 1800 5700 1800
Wire Wire Line
	5700 1900 5700 1800
Connection ~ 5700 1800
Wire Wire Line
	5700 1200 5700 1100
Connection ~ 5700 1100
$Comp
L LED:WS2812B D?
U 1 1 5FB77666
P 7000 1500
AR Path="/5FB77666" Ref="D?"  Part="1" 
AR Path="/5F70D6B6/5FB77666" Ref="D?"  Part="1" 
AR Path="/5FB682DC/5FB77666" Ref="D?"  Part="1" 
F 0 "D?" H 7344 1546 50  0000 L CNN
F 1 "WS2812B" H 7344 1455 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7050 1200 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7100 1125 50  0001 L TNN
	1    7000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB7766C
P 7000 1900
AR Path="/5FB7766C" Ref="#PWR?"  Part="1" 
AR Path="/5F70D6B6/5FB7766C" Ref="#PWR?"  Part="1" 
AR Path="/5FB682DC/5FB7766C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7000 1650 50  0001 C CNN
F 1 "GND" H 7005 1727 50  0000 C CNN
F 2 "" H 7000 1900 50  0001 C CNN
F 3 "" H 7000 1900 50  0001 C CNN
	1    7000 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FB77678
P 7550 1300
AR Path="/5FB77678" Ref="C?"  Part="1" 
AR Path="/5F70D6B6/5FB77678" Ref="C?"  Part="1" 
AR Path="/5FB682DC/5FB77678" Ref="C?"  Part="1" 
F 0 "C?" H 7665 1346 50  0000 L CNN
F 1 "100n" H 7665 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7588 1150 50  0001 C CNN
F 3 "~" H 7550 1300 50  0001 C CNN
	1    7550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1100 7550 1150
Wire Wire Line
	7000 1100 7550 1100
Wire Wire Line
	7550 1450 7550 1800
Wire Wire Line
	7550 1800 7000 1800
Wire Wire Line
	7000 1900 7000 1800
Connection ~ 7000 1800
Wire Wire Line
	7000 1200 7000 1100
Connection ~ 7000 1100
Wire Wire Line
	2250 1500 2700 1500
Wire Wire Line
	3300 1500 4000 1500
Wire Wire Line
	4600 1500 5400 1500
Wire Wire Line
	6000 1500 6700 1500
Text HLabel 2250 1500 0    50   Input ~ 0
DATA_zadani_LED
Text HLabel 1700 1000 0    50   Input ~ 0
V_BAT
Wire Wire Line
	1700 1000 1950 1000
Text GLabel 1950 1000 2    50   Input ~ 0
V_BAT
Text GLabel 3000 1100 0    50   Input ~ 0
V_BAT
Wire Wire Line
	4300 1100 3550 1100
Connection ~ 3550 1100
Wire Wire Line
	4850 1100 5700 1100
Connection ~ 4850 1100
Wire Wire Line
	7000 1100 6250 1100
Connection ~ 6250 1100
$EndSCHEMATC
