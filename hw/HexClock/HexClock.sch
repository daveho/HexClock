EESchema Schematic File Version 4
LIBS:HexClock-cache
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
$Comp
L Timer_RTC:DS1307+ U1
U 1 1 5CC30FEA
P 5350 6850
F 0 "U1" H 5891 6896 50  0000 L CNN
F 1 "DS1307+" H 5891 6805 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5350 6350 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 5350 6650 50  0001 C CNN
	1    5350 6850
	1    0    0    -1  
$EndComp
$Comp
L device:Crystal Y1
U 1 1 5CC31121
P 4200 7200
F 0 "Y1" V 4154 7331 50  0000 L CNN
F 1 "32.768 KHz" V 4245 7331 50  0000 L CNN
F 2 "" H 4200 7200 50  0001 C CNN
F 3 "" H 4200 7200 50  0001 C CNN
	1    4200 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 6950 4200 6950
Wire Wire Line
	4850 7050 4800 7050
Wire Wire Line
	4800 7050 4800 7400
Wire Wire Line
	4800 7400 4200 7400
Wire Wire Line
	4200 7400 4200 7350
Wire Wire Line
	4200 7050 4200 6950
Wire Wire Line
	5350 7250 5350 7400
$Comp
L power:GND #PWR08
U 1 1 5CC313A8
P 5350 7400
F 0 "#PWR08" H 5350 7150 50  0001 C CNN
F 1 "GND" H 5355 7227 50  0000 C CNN
F 2 "" H 5350 7400 50  0001 C CNN
F 3 "" H 5350 7400 50  0001 C CNN
	1    5350 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6150 5350 6450
Wire Wire Line
	5950 6150 5950 6250
$Comp
L power:GND #PWR09
U 1 1 5CC316DE
P 5950 6250
F 0 "#PWR09" H 5950 6000 50  0001 C CNN
F 1 "GND" H 5955 6077 50  0000 C CNN
F 2 "" H 5950 6250 50  0001 C CNN
F 3 "" H 5950 6250 50  0001 C CNN
	1    5950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6450 5250 5900
$Comp
L power:VCC #PWR07
U 1 1 5CC31833
P 5250 5900
F 0 "#PWR07" H 5250 5750 50  0001 C CNN
F 1 "VCC" H 5267 6073 50  0000 C CNN
F 2 "" H 5250 5900 50  0001 C CNN
F 3 "" H 5250 5900 50  0001 C CNN
	1    5250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6750 4700 6750
$Comp
L Display_Character:LTS-6960HR AFF1
U 1 1 5CC336DE
P 4050 2300
F 0 "AFF1" H 4050 2967 50  0000 C CNN
F 1 "LTS-6960HR" H 4050 2876 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 4050 1700 50  0001 C CNN
F 3 "" H 4050 2300 50  0001 C CNN
	1    4050 2300
	1    0    0    -1  
$EndComp
$Comp
L device:Q_PNP_EBC Q1
U 1 1 5CC354EC
P 4600 1350
F 0 "Q1" H 4791 1304 50  0000 L CNN
F 1 "2N3906" H 4791 1395 50  0000 L CNN
F 2 "" H 4800 1450 50  0001 C CNN
F 3 "" H 4600 1350 50  0001 C CNN
	1    4600 1350
	1    0    0    1   
$EndComp
Wire Wire Line
	4400 1350 4150 1350
$Comp
L device:R R9
U 1 1 5CC377AE
P 4000 1350
F 0 "R9" V 3793 1350 50  0000 C CNN
F 1 "4k7" V 3884 1350 50  0000 C CNN
F 2 "" V 3930 1350 50  0001 C CNN
F 3 "" H 4000 1350 50  0001 C CNN
	1    4000 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 1900 4700 1900
Wire Wire Line
	4700 1900 4700 1550
Wire Wire Line
	4550 2000 4700 2000
Wire Wire Line
	4700 2000 4700 1900
Connection ~ 4700 1900
Wire Wire Line
	4700 1150 4700 850 
$Comp
L power:VCC #PWR05
U 1 1 5CC38AF1
P 4700 850
F 0 "#PWR05" H 4700 700 50  0001 C CNN
F 1 "VCC" H 4717 1023 50  0000 C CNN
F 2 "" H 4700 850 50  0001 C CNN
F 3 "" H 4700 850 50  0001 C CNN
	1    4700 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1900 3250 1900
Wire Wire Line
	3550 2000 3250 2000
Wire Wire Line
	3550 2100 3250 2100
Wire Wire Line
	3550 2200 3250 2200
Wire Wire Line
	3550 2300 3250 2300
Wire Wire Line
	3550 2400 3250 2400
Wire Wire Line
	3550 2500 3250 2500
Text Label 3300 1900 0    50   ~ 0
D0
Text Label 3300 2000 0    50   ~ 0
D1
Text Label 3300 2100 0    50   ~ 0
D2
Text Label 3300 2200 0    50   ~ 0
D3
Text Label 3300 2300 0    50   ~ 0
D4
Text Label 3300 2400 0    50   ~ 0
D5
Text Label 3300 2500 0    50   ~ 0
D6
Wire Wire Line
	3250 2600 3550 2600
Wire Wire Line
	3550 2600 3550 2900
Wire Wire Line
	3550 2900 4700 2900
Wire Wire Line
	4700 2900 4700 2600
Wire Wire Line
	4700 2600 4550 2600
Text Label 3300 2600 0    50   ~ 0
D7
Wire Wire Line
	950  5600 1350 5600
Wire Wire Line
	950  5700 1350 5700
Wire Wire Line
	950  5800 1350 5800
Wire Wire Line
	950  5900 1350 5900
Wire Wire Line
	950  6000 1350 6000
Wire Wire Line
	950  6100 1350 6100
Wire Wire Line
	950  6200 1350 6200
Wire Wire Line
	950  6300 1350 6300
$Comp
L Display_Character:LTS-6960HR AFF2
U 1 1 5CC3F468
P 5800 2300
F 0 "AFF2" H 5800 2967 50  0000 C CNN
F 1 "LTS-6960HR" H 5800 2876 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 5800 1700 50  0001 C CNN
F 3 "" H 5800 2300 50  0001 C CNN
	1    5800 2300
	1    0    0    -1  
$EndComp
$Comp
L device:Q_PNP_EBC Q2
U 1 1 5CC3F46F
P 6350 1350
F 0 "Q2" H 6541 1304 50  0000 L CNN
F 1 "2N3906" H 6541 1395 50  0000 L CNN
F 2 "" H 6550 1450 50  0001 C CNN
F 3 "" H 6350 1350 50  0001 C CNN
	1    6350 1350
	1    0    0    1   
$EndComp
Wire Wire Line
	6150 1350 5900 1350
$Comp
L device:R R12
U 1 1 5CC3F477
P 5750 1350
F 0 "R12" V 5543 1350 50  0000 C CNN
F 1 "4k7" V 5634 1350 50  0000 C CNN
F 2 "" V 5680 1350 50  0001 C CNN
F 3 "" H 5750 1350 50  0001 C CNN
	1    5750 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 1900 6450 1900
Wire Wire Line
	6450 1900 6450 1550
Wire Wire Line
	6300 2000 6450 2000
Wire Wire Line
	6450 2000 6450 1900
Connection ~ 6450 1900
Wire Wire Line
	6450 1150 6450 850 
$Comp
L power:VCC #PWR010
U 1 1 5CC3F484
P 6450 850
F 0 "#PWR010" H 6450 700 50  0001 C CNN
F 1 "VCC" H 6467 1023 50  0000 C CNN
F 2 "" H 6450 850 50  0001 C CNN
F 3 "" H 6450 850 50  0001 C CNN
	1    6450 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1900 5000 1900
Wire Wire Line
	5300 2000 5000 2000
Wire Wire Line
	5300 2100 5000 2100
Wire Wire Line
	5300 2200 5000 2200
Wire Wire Line
	5300 2300 5000 2300
Wire Wire Line
	5300 2400 5000 2400
Wire Wire Line
	5300 2500 5000 2500
Text Label 5050 1900 0    50   ~ 0
D0
Text Label 5050 2000 0    50   ~ 0
D1
Text Label 5050 2100 0    50   ~ 0
D2
Text Label 5050 2200 0    50   ~ 0
D3
Text Label 5050 2300 0    50   ~ 0
D4
Text Label 5050 2400 0    50   ~ 0
D5
Text Label 5050 2500 0    50   ~ 0
D6
Wire Wire Line
	5000 2600 5300 2600
Wire Wire Line
	5300 2600 5300 2900
Wire Wire Line
	5300 2900 6450 2900
Wire Wire Line
	6450 2900 6450 2600
Wire Wire Line
	6450 2600 6300 2600
Text Label 5050 2600 0    50   ~ 0
D7
$Comp
L Display_Character:LTS-6960HR AFF3
U 1 1 5CC4098D
P 7550 2300
F 0 "AFF3" H 7550 2967 50  0000 C CNN
F 1 "LTS-6960HR" H 7550 2876 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 7550 1700 50  0001 C CNN
F 3 "" H 7550 2300 50  0001 C CNN
	1    7550 2300
	1    0    0    -1  
$EndComp
$Comp
L device:Q_PNP_EBC Q3
U 1 1 5CC40994
P 8100 1350
F 0 "Q3" H 8291 1304 50  0000 L CNN
F 1 "2N3906" H 8291 1395 50  0000 L CNN
F 2 "" H 8300 1450 50  0001 C CNN
F 3 "" H 8100 1350 50  0001 C CNN
	1    8100 1350
	1    0    0    1   
$EndComp
Wire Wire Line
	7900 1350 7650 1350
$Comp
L device:R R13
U 1 1 5CC4099C
P 7500 1350
F 0 "R13" V 7293 1350 50  0000 C CNN
F 1 "4k7" V 7384 1350 50  0000 C CNN
F 2 "" V 7430 1350 50  0001 C CNN
F 3 "" H 7500 1350 50  0001 C CNN
	1    7500 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 1900 8200 1900
Wire Wire Line
	8200 1900 8200 1550
Wire Wire Line
	8050 2000 8200 2000
Wire Wire Line
	8200 2000 8200 1900
Connection ~ 8200 1900
Wire Wire Line
	8200 1150 8200 850 
$Comp
L power:VCC #PWR013
U 1 1 5CC409A9
P 8200 850
F 0 "#PWR013" H 8200 700 50  0001 C CNN
F 1 "VCC" H 8217 1023 50  0000 C CNN
F 2 "" H 8200 850 50  0001 C CNN
F 3 "" H 8200 850 50  0001 C CNN
	1    8200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1900 6750 1900
Wire Wire Line
	7050 2000 6750 2000
Wire Wire Line
	7050 2100 6750 2100
Wire Wire Line
	7050 2200 6750 2200
Wire Wire Line
	7050 2300 6750 2300
Wire Wire Line
	7050 2400 6750 2400
Wire Wire Line
	7050 2500 6750 2500
Text Label 6800 1900 0    50   ~ 0
D0
Text Label 6800 2000 0    50   ~ 0
D1
Text Label 6800 2100 0    50   ~ 0
D2
Text Label 6800 2200 0    50   ~ 0
D3
Text Label 6800 2300 0    50   ~ 0
D4
Text Label 6800 2400 0    50   ~ 0
D5
Text Label 6800 2500 0    50   ~ 0
D6
Wire Wire Line
	6750 2600 7050 2600
Wire Wire Line
	7050 2600 7050 2900
Wire Wire Line
	7050 2900 8200 2900
Wire Wire Line
	8200 2900 8200 2600
Wire Wire Line
	8200 2600 8050 2600
Text Label 6800 2600 0    50   ~ 0
D7
$Comp
L Display_Character:LTS-6960HR AFF4
U 1 1 5CC448D2
P 9300 2300
F 0 "AFF4" H 9300 2967 50  0000 C CNN
F 1 "LTS-6960HR" H 9300 2876 50  0000 C CNN
F 2 "Display_7Segment:7SegmentLED_LTS6760_LTS6780" H 9300 1700 50  0001 C CNN
F 3 "" H 9300 2300 50  0001 C CNN
	1    9300 2300
	1    0    0    -1  
$EndComp
$Comp
L device:Q_PNP_EBC Q4
U 1 1 5CC448D9
P 9850 1350
F 0 "Q4" H 10041 1304 50  0000 L CNN
F 1 "2N3906" H 10041 1395 50  0000 L CNN
F 2 "" H 10050 1450 50  0001 C CNN
F 3 "" H 9850 1350 50  0001 C CNN
	1    9850 1350
	1    0    0    1   
$EndComp
Wire Wire Line
	9650 1350 9400 1350
$Comp
L device:R R14
U 1 1 5CC448E1
P 9250 1350
F 0 "R14" V 9043 1350 50  0000 C CNN
F 1 "4k7" V 9134 1350 50  0000 C CNN
F 2 "" V 9180 1350 50  0001 C CNN
F 3 "" H 9250 1350 50  0001 C CNN
	1    9250 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 1900 9950 1900
Wire Wire Line
	9950 1900 9950 1550
Wire Wire Line
	9800 2000 9950 2000
Wire Wire Line
	9950 2000 9950 1900
Connection ~ 9950 1900
Wire Wire Line
	9950 1150 9950 850 
$Comp
L power:VCC #PWR014
U 1 1 5CC448EE
P 9950 850
F 0 "#PWR014" H 9950 700 50  0001 C CNN
F 1 "VCC" H 9967 1023 50  0000 C CNN
F 2 "" H 9950 850 50  0001 C CNN
F 3 "" H 9950 850 50  0001 C CNN
	1    9950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1900 8500 1900
Wire Wire Line
	8800 2000 8500 2000
Wire Wire Line
	8800 2100 8500 2100
Wire Wire Line
	8800 2200 8500 2200
Wire Wire Line
	8800 2300 8500 2300
Wire Wire Line
	8800 2400 8500 2400
Wire Wire Line
	8800 2500 8500 2500
Text Label 8550 1900 0    50   ~ 0
D0
Text Label 8550 2000 0    50   ~ 0
D1
Text Label 8550 2100 0    50   ~ 0
D2
Text Label 8550 2200 0    50   ~ 0
D3
Text Label 8550 2300 0    50   ~ 0
D4
Text Label 8550 2400 0    50   ~ 0
D5
Text Label 8550 2500 0    50   ~ 0
D6
Wire Wire Line
	8500 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2900
Wire Wire Line
	8800 2900 9950 2900
Wire Wire Line
	9950 2900 9950 2600
Wire Wire Line
	9950 2600 9800 2600
Text Label 8550 2600 0    50   ~ 0
D7
$Comp
L device:R R10
U 1 1 5CC4C9A9
P 4400 6350
F 0 "R10" H 4330 6396 50  0000 R CNN
F 1 "1k" H 4330 6305 50  0000 R CNN
F 2 "" V 4330 6350 50  0001 C CNN
F 3 "" H 4400 6350 50  0001 C CNN
	1    4400 6350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 6200 4400 6100
$Comp
L power:VCC #PWR03
U 1 1 5CC54C57
P 4400 6100
F 0 "#PWR03" H 4400 5950 50  0001 C CNN
F 1 "VCC" H 4417 6273 50  0000 C CNN
F 2 "" H 4400 6100 50  0001 C CNN
F 3 "" H 4400 6100 50  0001 C CNN
	1    4400 6100
	1    0    0    -1  
$EndComp
$Comp
L device:R R11
U 1 1 5CC54CB0
P 4700 6350
F 0 "R11" H 4630 6396 50  0000 R CNN
F 1 "1k" H 4630 6305 50  0000 R CNN
F 2 "" V 4630 6350 50  0001 C CNN
F 3 "" H 4700 6350 50  0001 C CNN
	1    4700 6350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4700 6200 4700 6100
$Comp
L power:VCC #PWR04
U 1 1 5CC54CB7
P 4700 6100
F 0 "#PWR04" H 4700 5950 50  0001 C CNN
F 1 "VCC" H 4717 6273 50  0000 C CNN
F 2 "" H 4700 6100 50  0001 C CNN
F 3 "" H 4700 6100 50  0001 C CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6500 4400 6650
Connection ~ 4400 6650
Wire Wire Line
	4400 6650 4850 6650
Wire Wire Line
	4700 6500 4700 6750
Connection ~ 4700 6750
Wire Wire Line
	4700 6750 3950 6750
Entry Bus Bus
	8300 3150 8400 3050
Entry Bus Bus
	4800 3150 4900 3050
Entry Bus Bus
	6550 3150 6650 3050
Entry Wire Line
	4900 2000 5000 1900
Entry Wire Line
	4900 2100 5000 2000
Entry Wire Line
	4900 2200 5000 2100
Entry Wire Line
	4900 2300 5000 2200
Entry Wire Line
	4900 2400 5000 2300
Entry Wire Line
	4900 2500 5000 2400
Entry Wire Line
	4900 2600 5000 2500
Entry Wire Line
	4900 2700 5000 2600
Entry Wire Line
	6650 2000 6750 1900
Entry Wire Line
	6650 2100 6750 2000
Entry Wire Line
	6650 2200 6750 2100
Entry Wire Line
	6650 2300 6750 2200
Entry Wire Line
	6650 2400 6750 2300
Entry Wire Line
	6650 2500 6750 2400
Entry Wire Line
	6650 2600 6750 2500
Entry Wire Line
	6650 2700 6750 2600
Entry Wire Line
	8400 2000 8500 1900
Entry Wire Line
	8400 2100 8500 2000
Entry Wire Line
	8400 2200 8500 2100
Entry Wire Line
	8400 2300 8500 2200
Entry Wire Line
	8400 2400 8500 2300
Entry Wire Line
	8400 2500 8500 2400
Entry Wire Line
	8400 2600 8500 2500
Entry Wire Line
	8400 2700 8500 2600
Wire Wire Line
	3850 1350 3550 1350
Wire Wire Line
	5600 1350 5300 1350
Wire Wire Line
	7350 1350 7050 1350
Wire Wire Line
	9100 1350 8800 1350
Text Label 3600 1350 0    50   ~ 0
AN0
Text Label 5350 1350 0    50   ~ 0
AN1
Text Label 7100 1350 0    50   ~ 0
AN2
Text Label 8850 1350 0    50   ~ 0
AN3
Wire Wire Line
	3250 5700 3750 5700
Wire Wire Line
	3250 5800 3750 5800
Wire Wire Line
	3250 5900 3750 5900
Wire Wire Line
	3250 6100 3750 6100
Text Notes 6350 6950 0    50   ~ 0
Hex clock using Arduino Nano and DS1307 RTC
$Comp
L Switch:SW_Push SW1
U 1 1 5CCA7ED2
P 5050 3950
F 0 "SW1" H 5050 4235 50  0000 C CNN
F 1 "SW_Push" H 5050 4144 50  0000 C CNN
F 2 "" H 5050 4150 50  0001 C CNN
F 3 "" H 5050 4150 50  0001 C CNN
	1    5050 3950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5CCA8015
P 5050 4350
F 0 "SW2" H 5050 4635 50  0000 C CNN
F 1 "SW_Push" H 5050 4544 50  0000 C CNN
F 2 "" H 5050 4550 50  0001 C CNN
F 3 "" H 5050 4550 50  0001 C CNN
	1    5050 4350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5CCB3C18
P 5050 4750
F 0 "SW3" H 5050 5035 50  0000 C CNN
F 1 "SW_Push" H 5050 4944 50  0000 C CNN
F 2 "" H 5050 4950 50  0001 C CNN
F 3 "" H 5050 4950 50  0001 C CNN
	1    5050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3950 5400 3950
Wire Wire Line
	5400 3950 5400 4350
$Comp
L power:GND #PWR06
U 1 1 5CCBBB8B
P 5400 4850
F 0 "#PWR06" H 5400 4600 50  0001 C CNN
F 1 "GND" H 5405 4677 50  0000 C CNN
F 2 "" H 5400 4850 50  0001 C CNN
F 3 "" H 5400 4850 50  0001 C CNN
	1    5400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4350 5400 4350
Connection ~ 5400 4350
Wire Wire Line
	5400 4350 5400 4750
Wire Wire Line
	5250 4750 5400 4750
Connection ~ 5400 4750
Wire Wire Line
	5400 4750 5400 4850
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5CCDC3B3
P 6950 4350
F 0 "J1" H 7030 4342 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7030 4251 50  0000 L CNN
F 2 "" H 6950 4350 50  0001 C CNN
F 3 "~" H 6950 4350 50  0001 C CNN
	1    6950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4350 6600 4350
Wire Wire Line
	6600 4350 6600 4100
Wire Wire Line
	6750 4450 6600 4450
Wire Wire Line
	6600 4450 6600 4650
$Comp
L power:VCC #PWR011
U 1 1 5CCE70B9
P 6600 4100
F 0 "#PWR011" H 6600 3950 50  0001 C CNN
F 1 "VCC" H 6617 4273 50  0000 C CNN
F 2 "" H 6600 4100 50  0001 C CNN
F 3 "" H 6600 4100 50  0001 C CNN
	1    6600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CCE715C
P 6600 4650
F 0 "#PWR012" H 6600 4400 50  0001 C CNN
F 1 "GND" H 6605 4477 50  0000 C CNN
F 2 "" H 6600 4650 50  0001 C CNN
F 3 "" H 6600 4650 50  0001 C CNN
	1    6600 4650
	1    0    0    -1  
$EndComp
Text Notes 7000 4200 0    50   ~ 0
Power connector
Entry Bus Bus
	3050 3150 3150 3050
Entry Wire Line
	3150 2000 3250 1900
Entry Wire Line
	3150 2100 3250 2000
Entry Wire Line
	3150 2200 3250 2100
Entry Wire Line
	3150 2300 3250 2200
Entry Wire Line
	3150 2400 3250 2300
Entry Wire Line
	3150 2500 3250 2400
Entry Wire Line
	3150 2600 3250 2500
Entry Wire Line
	3150 2700 3250 2600
$Comp
L device:R R1
U 1 1 5CD03268
P 1500 5600
F 0 "R1" V 1450 5400 50  0000 C CNN
F 1 "R" V 1450 5750 50  0000 C CNN
F 2 "" V 1430 5600 50  0001 C CNN
F 3 "" H 1500 5600 50  0001 C CNN
	1    1500 5600
	0    1    1    0   
$EndComp
$Comp
L device:R R2
U 1 1 5CD0E1D0
P 1500 5700
F 0 "R2" V 1450 5500 50  0000 C CNN
F 1 "R" V 1450 5850 50  0000 C CNN
F 2 "" V 1430 5700 50  0001 C CNN
F 3 "" H 1500 5700 50  0001 C CNN
	1    1500 5700
	0    1    1    0   
$EndComp
$Comp
L device:R R3
U 1 1 5CD18F70
P 1500 5800
F 0 "R3" V 1450 5600 50  0000 C CNN
F 1 "R" V 1450 5950 50  0000 C CNN
F 2 "" V 1430 5800 50  0001 C CNN
F 3 "" H 1500 5800 50  0001 C CNN
	1    1500 5800
	0    1    1    0   
$EndComp
$Comp
L device:R R4
U 1 1 5CD18F76
P 1500 5900
F 0 "R4" V 1450 5700 50  0000 C CNN
F 1 "R" V 1450 6050 50  0000 C CNN
F 2 "" V 1430 5900 50  0001 C CNN
F 3 "" H 1500 5900 50  0001 C CNN
	1    1500 5900
	0    1    1    0   
$EndComp
$Comp
L device:R R5
U 1 1 5CD1E6E7
P 1500 6000
F 0 "R5" V 1450 5800 50  0000 C CNN
F 1 "R" V 1450 6150 50  0000 C CNN
F 2 "" V 1430 6000 50  0001 C CNN
F 3 "" H 1500 6000 50  0001 C CNN
	1    1500 6000
	0    1    1    0   
$EndComp
$Comp
L device:R R6
U 1 1 5CD1E6ED
P 1500 6100
F 0 "R6" V 1450 5900 50  0000 C CNN
F 1 "R" V 1450 6250 50  0000 C CNN
F 2 "" V 1430 6100 50  0001 C CNN
F 3 "" H 1500 6100 50  0001 C CNN
	1    1500 6100
	0    1    1    0   
$EndComp
$Comp
L device:R R7
U 1 1 5CD1E6F3
P 1500 6200
F 0 "R7" V 1450 6000 50  0000 C CNN
F 1 "R" V 1450 6350 50  0000 C CNN
F 2 "" V 1430 6200 50  0001 C CNN
F 3 "" H 1500 6200 50  0001 C CNN
	1    1500 6200
	0    1    1    0   
$EndComp
$Comp
L device:R R8
U 1 1 5CD1E6F9
P 1500 6300
F 0 "R8" V 1450 6100 50  0000 C CNN
F 1 "R" V 1450 6450 50  0000 C CNN
F 2 "" V 1430 6300 50  0001 C CNN
F 3 "" H 1500 6300 50  0001 C CNN
	1    1500 6300
	0    1    1    0   
$EndComp
$Comp
L ARDUINO_NANO:ARDUINO_NANO TB1
U 1 1 5CC5316A
P 2550 5300
F 0 "TB1" H 2550 6867 50  0000 C CNN
F 1 "ARDUINO_NANO" H 2550 6776 50  0000 C CNN
F 2 "SHIELD_ARDUINO_NANO" H 2550 5300 50  0001 L BNN
F 3 "DFRobot" H 2550 5300 50  0001 L BNN
F 4 "Dev.kit: Arduino; UART; ICSP, USB B mini, pin strips" H 2550 5300 50  0001 L BNN "Field4"
F 5 "None" H 2550 5300 50  0001 L BNN "Field5"
F 6 "None" H 2550 5300 50  0001 L BNN "Field6"
F 7 "ARDUINO NANO" H 2550 5300 50  0001 L BNN "Field7"
F 8 "Unavailable" H 2550 5300 50  0001 L BNN "Field8"
	1    2550 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5600 1850 5600
Wire Wire Line
	1650 5700 1850 5700
Wire Wire Line
	1650 5800 1850 5800
Wire Wire Line
	1650 5900 1850 5900
Wire Wire Line
	1650 6000 1850 6000
Wire Wire Line
	1650 6100 1850 6100
Wire Wire Line
	1650 6200 1850 6200
Wire Wire Line
	1650 6300 1850 6300
Wire Wire Line
	3250 5600 3450 5600
Wire Wire Line
	3450 5600 3450 6850
Wire Wire Line
	3450 6850 1850 6850
Wire Wire Line
	1850 6850 1850 6300
Entry Wire Line
	850  5500 950  5600
Entry Wire Line
	850  5600 950  5700
Entry Wire Line
	850  5700 950  5800
Entry Wire Line
	850  5800 950  5900
Entry Wire Line
	850  5900 950  6000
Entry Wire Line
	850  6000 950  6100
Entry Wire Line
	850  6100 950  6200
Entry Wire Line
	850  6200 950  6300
Entry Bus Bus
	850  3250 950  3150
Text Label 1050 5600 0    50   ~ 0
D0
Text Label 1050 5700 0    50   ~ 0
D1
Text Label 1050 5800 0    50   ~ 0
D2
Text Label 1050 5900 0    50   ~ 0
D3
Text Label 1050 6000 0    50   ~ 0
D4
Text Label 1050 6100 0    50   ~ 0
D5
Text Label 1050 6200 0    50   ~ 0
D6
Text Label 1050 6300 0    50   ~ 0
D7
Text Label 3550 5700 0    50   ~ 0
AN0
Text Label 3550 5800 0    50   ~ 0
AN1
Text Label 3550 5900 0    50   ~ 0
AN2
Text Label 3550 6100 0    50   ~ 0
AN3
Wire Wire Line
	3850 3950 3850 6000
Wire Wire Line
	3850 6000 3250 6000
Wire Wire Line
	3850 3950 4850 3950
Wire Wire Line
	3950 4350 4850 4350
Wire Wire Line
	3750 4750 3750 3600
Wire Wire Line
	3750 3600 1500 3600
Wire Wire Line
	1500 3600 1500 4700
Wire Wire Line
	1500 4700 1850 4700
Wire Wire Line
	3750 4750 4850 4750
Text Label 1450 5100 0    50   ~ 0
SDA
Text Label 1450 5200 0    50   ~ 0
SCL
Text Label 4000 6650 0    50   ~ 0
SCL
Text Label 4000 6750 0    50   ~ 0
SDA
Wire Wire Line
	3250 4200 3500 4200
Wire Wire Line
	3500 4200 3500 4000
$Comp
L power:VCC #PWR?
U 1 1 5CD3B5C7
P 3500 3850
F 0 "#PWR?" H 3500 3700 50  0001 C CNN
F 1 "VCC" H 3517 4023 50  0000 C CNN
F 2 "" H 3500 3850 50  0001 C CNN
F 3 "" H 3500 3850 50  0001 C CNN
	1    3500 3850
	1    0    0    -1  
$EndComp
Text Label 3550 6000 0    50   ~ 0
SW1
Text Label 1600 4800 0    50   ~ 0
SW2
Text Label 1600 4700 0    50   ~ 0
SW3
Text Label 4600 3950 0    50   ~ 0
SW1
Text Label 4600 4350 0    50   ~ 0
SW2
Text Label 4600 4750 0    50   ~ 0
SW3
Wire Wire Line
	3850 6650 3850 7250
Wire Wire Line
	3850 7250 750  7250
Wire Wire Line
	750  7250 750  5200
Wire Wire Line
	750  5200 1850 5200
Wire Wire Line
	3850 6650 4400 6650
Wire Wire Line
	3950 6750 3950 7350
Wire Wire Line
	3950 7350 650  7350
Wire Wire Line
	650  7350 650  5100
Wire Wire Line
	650  5100 1850 5100
Wire Wire Line
	3250 6600 3350 6600
Wire Wire Line
	3350 6600 3350 6950
$Comp
L power:GND #PWR?
U 1 1 5CDA3E27
P 3350 6950
F 0 "#PWR?" H 3350 6700 50  0001 C CNN
F 1 "GND" H 3355 6777 50  0000 C CNN
F 2 "" H 3350 6950 50  0001 C CNN
F 3 "" H 3350 6950 50  0001 C CNN
	1    3350 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4350 3950 3500
Wire Wire Line
	3950 3500 1400 3500
Wire Wire Line
	1400 3500 1400 4800
Wire Wire Line
	1400 4800 1850 4800
Wire Wire Line
	3250 4000 3500 4000
Connection ~ 3500 4000
Wire Wire Line
	3500 4000 3500 3850
Wire Wire Line
	5350 6150 5950 6150
Wire Bus Line
	950  3150 8300 3150
Wire Bus Line
	850  3250 850  6200
Wire Bus Line
	3150 2000 3150 3050
Wire Bus Line
	4900 2000 4900 3050
Wire Bus Line
	6650 2000 6650 3050
Wire Bus Line
	8400 2000 8400 3050
$EndSCHEMATC
