EESchema Schematic File Version 4
LIBS:DisplayBoard-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5350 7250 5350 7400
$Comp
L device:Q_PNP_EBC Q1
U 1 1 5CC354EC
P 7150 4300
F 0 "Q1" H 7341 4254 50  0000 L CNN
F 1 "2N3906" H 7341 4345 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 7350 4400 50  0001 C CNN
F 3 "" H 7150 4300 50  0001 C CNN
	1    7150 4300
	1    0    0    1   
$EndComp
Wire Wire Line
	6950 4300 6900 4300
$Comp
L device:R R9
U 1 1 5CC377AE
P 6750 4300
F 0 "R9" V 6543 4300 50  0000 C CNN
F 1 "4k7" V 6634 4300 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6680 4300 50  0001 C CNN
F 3 "" H 6750 4300 50  0001 C CNN
	1    6750 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 4100 7250 3950
Text Label 6400 4300 0    50   ~ 0
AN0
Text Notes 6350 6950 0    50   ~ 0
Hex clock display board
$Comp
L device:R R1
U 1 1 5CD03268
P 4150 5050
F 0 "R1" V 4100 4850 50  0000 C CNN
F 1 "220" V 4100 5250 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5050 50  0001 C CNN
F 3 "" H 4150 5050 50  0001 C CNN
	1    4150 5050
	0    1    1    0   
$EndComp
$Comp
L device:R R2
U 1 1 5CD0E1D0
P 4150 5150
F 0 "R2" V 4100 4950 50  0000 C CNN
F 1 "220" V 4100 5350 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5150 50  0001 C CNN
F 3 "" H 4150 5150 50  0001 C CNN
	1    4150 5150
	0    1    1    0   
$EndComp
$Comp
L device:R R3
U 1 1 5CD18F70
P 4150 5250
F 0 "R3" V 4100 5050 50  0000 C CNN
F 1 "220" V 4100 5450 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5250 50  0001 C CNN
F 3 "" H 4150 5250 50  0001 C CNN
	1    4150 5250
	0    1    1    0   
$EndComp
$Comp
L device:R R4
U 1 1 5CD18F76
P 4150 5350
F 0 "R4" V 4100 5150 50  0000 C CNN
F 1 "220" V 4100 5550 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5350 50  0001 C CNN
F 3 "" H 4150 5350 50  0001 C CNN
	1    4150 5350
	0    1    1    0   
$EndComp
$Comp
L device:R R5
U 1 1 5CD1E6E7
P 4150 5450
F 0 "R5" V 4100 5250 50  0000 C CNN
F 1 "220" V 4100 5650 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5450 50  0001 C CNN
F 3 "" H 4150 5450 50  0001 C CNN
	1    4150 5450
	0    1    1    0   
$EndComp
$Comp
L device:R R6
U 1 1 5CD1E6ED
P 4150 5550
F 0 "R6" V 4100 5350 50  0000 C CNN
F 1 "220" V 4100 5750 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5550 50  0001 C CNN
F 3 "" H 4150 5550 50  0001 C CNN
	1    4150 5550
	0    1    1    0   
$EndComp
$Comp
L device:R R7
U 1 1 5CD1E6F3
P 4150 5650
F 0 "R7" V 4100 5450 50  0000 C CNN
F 1 "220" V 4100 5850 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5650 50  0001 C CNN
F 3 "" H 4150 5650 50  0001 C CNN
	1    4150 5650
	0    1    1    0   
$EndComp
$Comp
L device:R R8
U 1 1 5CD1E6F9
P 4150 5750
F 0 "R8" V 4100 5550 50  0000 C CNN
F 1 "220" V 4100 5950 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4080 5750 50  0001 C CNN
F 3 "" H 4150 5750 50  0001 C CNN
	1    4150 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5050 4500 5050
Wire Wire Line
	4300 5150 4500 5150
Wire Wire Line
	4300 5250 4500 5250
Wire Wire Line
	4300 5350 4500 5350
Wire Wire Line
	4300 5450 4500 5450
Wire Wire Line
	4300 5550 4500 5550
Wire Wire Line
	4300 5650 4500 5650
Wire Wire Line
	4300 5750 4500 5750
$Comp
L Display_Character:CA56-12EWA U1
U 1 1 5CD738FF
P 5600 5350
F 0 "U1" H 5600 6017 50  0000 C CNN
F 1 "CA56-12EWA" H 5600 5926 50  0000 C CNN
F 2 "Displays_7-Segment:CA56-12EWA" H 5600 4750 50  0001 C CNN
F 3 "" H 5170 5380 50  0001 C CNN
	1    5600 5350
	1    0    0    -1  
$EndComp
$Comp
L device:Q_PNP_EBC Q4
U 1 1 5CD9C39D
P 7150 3500
F 0 "Q4" H 7341 3454 50  0000 L CNN
F 1 "2N3906" H 7341 3545 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 7350 3600 50  0001 C CNN
F 3 "" H 7150 3500 50  0001 C CNN
	1    7150 3500
	1    0    0    1   
$EndComp
Wire Wire Line
	6950 3500 6900 3500
$Comp
L device:R R10
U 1 1 5CD9C3A4
P 6750 3500
F 0 "R10" V 6543 3500 50  0000 C CNN
F 1 "4k7" V 6634 3500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6680 3500 50  0001 C CNN
F 3 "" H 6750 3500 50  0001 C CNN
	1    6750 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3300 7250 3150
$Comp
L device:Q_PNP_EBC Q3
U 1 1 5CD9F12A
P 7150 2700
F 0 "Q3" H 7341 2654 50  0000 L CNN
F 1 "2N3906" H 7341 2745 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 7350 2800 50  0001 C CNN
F 3 "" H 7150 2700 50  0001 C CNN
	1    7150 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	6950 2700 6900 2700
$Comp
L device:R R11
U 1 1 5CD9F131
P 6750 2700
F 0 "R11" V 6543 2700 50  0000 C CNN
F 1 "4k7" V 6634 2700 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6680 2700 50  0001 C CNN
F 3 "" H 6750 2700 50  0001 C CNN
	1    6750 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2500 7250 2350
$Comp
L device:Q_PNP_EBC Q2
U 1 1 5CD9F140
P 7150 1900
F 0 "Q2" H 7341 1854 50  0000 L CNN
F 1 "2N3906" H 7341 1945 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 7350 2000 50  0001 C CNN
F 3 "" H 7150 1900 50  0001 C CNN
	1    7150 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	6950 1900 6900 1900
$Comp
L device:R R12
U 1 1 5CD9F147
P 6750 1900
F 0 "R12" V 6543 1900 50  0000 C CNN
F 1 "4k7" V 6634 1900 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6680 1900 50  0001 C CNN
F 3 "" H 6750 1900 50  0001 C CNN
	1    6750 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 1700 7250 1550
Text Label 6400 3500 0    50   ~ 0
AN1
Text Label 6400 2700 0    50   ~ 0
AN2
Text Label 6400 1900 0    50   ~ 0
AN3
Wire Wire Line
	6700 5450 7250 5450
Wire Wire Line
	7250 5450 7250 4500
Wire Wire Line
	6700 5550 7800 5550
Wire Wire Line
	7800 5550 7800 3700
Wire Wire Line
	6700 5650 7900 5650
Wire Wire Line
	7900 5650 7900 2900
Wire Wire Line
	6700 5750 8000 5750
Text Label 7000 3950 0    50   ~ 0
VCC0
Text Label 7000 3150 0    50   ~ 0
VCC1
Text Label 7000 2350 0    50   ~ 0
VCC2
Text Label 7000 1550 0    50   ~ 0
VCC3
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J1
U 1 1 5CDBD573
P 3400 5350
F 0 "J1" H 3450 5867 50  0000 C CNN
F 1 "Conn_02x08_Top_Bottom" H 3450 5776 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 3400 5350 50  0001 C CNN
F 3 "~" H 3400 5350 50  0001 C CNN
	1    3400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5050 3700 5050
Wire Wire Line
	4000 5150 3700 5150
Wire Wire Line
	4000 5250 3700 5250
Wire Wire Line
	4000 5350 3700 5350
Wire Wire Line
	4000 5450 3700 5450
Wire Wire Line
	4000 5550 3700 5550
Wire Wire Line
	4000 5650 3700 5650
Wire Wire Line
	4000 5750 3700 5750
Wire Wire Line
	3200 5050 2700 5050
Text Label 2800 5050 0    50   ~ 0
AN0
Text Label 2800 5150 0    50   ~ 0
AN1
Text Label 2800 5250 0    50   ~ 0
AN2
Text Label 2800 5350 0    50   ~ 0
AN3
Text Label 2800 5450 0    50   ~ 0
VCC0
Text Label 2800 5550 0    50   ~ 0
VCC1
Text Label 2800 5650 0    50   ~ 0
VCC2
Text Label 2800 5750 0    50   ~ 0
VCC3
Wire Wire Line
	7800 3700 7250 3700
Wire Wire Line
	7900 2900 7250 2900
Wire Wire Line
	7250 2100 8000 2100
Wire Wire Line
	8000 2100 8000 5750
Wire Wire Line
	2700 4300 2700 5050
Wire Wire Line
	2700 4300 6600 4300
Wire Wire Line
	2600 5150 2600 3500
Wire Wire Line
	2600 3500 6600 3500
Wire Wire Line
	2600 5150 3200 5150
Wire Wire Line
	2500 5250 2500 2700
Wire Wire Line
	2500 2700 6600 2700
Wire Wire Line
	2500 5250 3200 5250
Wire Wire Line
	2400 5350 2400 1900
Wire Wire Line
	2400 1900 6600 1900
Wire Wire Line
	2400 5350 3200 5350
Wire Wire Line
	2300 5450 2300 3950
Wire Wire Line
	2300 3950 7250 3950
Wire Wire Line
	2300 5450 3200 5450
Wire Wire Line
	2200 5550 2200 3150
Wire Wire Line
	2200 3150 7250 3150
Wire Wire Line
	2200 5550 3200 5550
Wire Wire Line
	2100 5650 2100 2350
Wire Wire Line
	2100 2350 7250 2350
Wire Wire Line
	2100 5650 3200 5650
Wire Wire Line
	2000 5750 2000 1550
Wire Wire Line
	2000 1550 7250 1550
Wire Wire Line
	2000 5750 3200 5750
$EndSCHEMATC
