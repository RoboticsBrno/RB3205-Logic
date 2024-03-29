EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 33 23
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
L Device:Q_PMOS_DGS Q?
U 1 1 5F746478
P 5100 2750
AR Path="/5F746478" Ref="Q?"  Part="1" 
AR Path="/5F7BA54B/5F746478" Ref="Q?"  Part="1" 
AR Path="/5F7BA54B/5F7BCB45/5F746478" Ref="Q3"  Part="1" 
AR Path="/5F7BA54B/5F7BCBA6/5F746478" Ref="Q4"  Part="1" 
AR Path="/5F7BA54B/5F7BCC0A/5F746478" Ref="Q5"  Part="1" 
AR Path="/5F7BA54B/5F7BCC69/5F746478" Ref="Q6"  Part="1" 
F 0 "Q3" V 5442 2750 50  0000 C CNN
F 1 "Q_PMOS_DGS" V 5351 2750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5300 2850 50  0001 C CNN
F 3 "~" H 5100 2750 50  0001 C CNN
F 4 "C15127" H 5100 2750 50  0001 C CNN "LCSC"
F 5 "0;0;180" H 5100 2750 50  0001 C CNN "JLCPCB_CORRECTION"
	1    5100 2750
	0    1    -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F74647E
P 5100 3250
AR Path="/5F74647E" Ref="R?"  Part="1" 
AR Path="/5F7BA54B/5F74647E" Ref="R?"  Part="1" 
AR Path="/5F7BA54B/5F7BCB45/5F74647E" Ref="R14"  Part="1" 
AR Path="/5F7BA54B/5F7BCBA6/5F74647E" Ref="R15"  Part="1" 
AR Path="/5F7BA54B/5F7BCC0A/5F74647E" Ref="R16"  Part="1" 
AR Path="/5F7BA54B/5F7BCC69/5F74647E" Ref="R17"  Part="1" 
F 0 "R14" H 5170 3296 50  0000 L CNN
F 1 "10k" H 5170 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5030 3250 50  0001 C CNN
F 3 "~" H 5100 3250 50  0001 C CNN
F 4 "C25744" H 5100 3250 50  0001 C CNN "LCSC"
	1    5100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2650 4900 2650
Wire Wire Line
	5300 2650 5600 2650
Wire Wire Line
	5100 2950 5100 3100
Wire Wire Line
	5100 3400 5100 3550
Text HLabel 5100 3550 3    50   Input ~ 0
GPIO
Text HLabel 4650 2650 0    50   Input ~ 0
V_BAT_SPINANE
Text Notes 4200 2600 0    50   ~ 0
IN\n
Text Notes 5650 2600 0    50   ~ 0
OUT\n
Text HLabel 5600 2650 2    50   Input ~ 0
V_BAT
$EndSCHEMATC
