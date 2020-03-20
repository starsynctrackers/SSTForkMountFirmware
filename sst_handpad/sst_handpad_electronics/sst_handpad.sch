EESchema Schematic File Version 4
LIBS:sst_handpad-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "SST Handpad"
Date "2020-03-13"
Rev "v0.0.3"
Comp "StarSync Trackers LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push_LED SW_ESC1
U 1 1 5E1E7E66
P 9350 2750
F 0 "SW_ESC1" H 9350 3135 50  0000 C CNN
F 1 "SW_Push_LED" H 9350 3044 50  0000 C CNN
F 2 "custom_footprints:MPJA_LED_SWITCH" H 9350 3050 50  0001 C CNN
F 3 "" H 9350 3050 50  0001 C CNN
	1    9350 2750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_LED SW_UP1
U 1 1 5E1E7F2A
P 7450 3900
F 0 "SW_UP1" H 7450 4285 50  0000 C CNN
F 1 "SW_Push_LED" H 7450 4194 50  0000 C CNN
F 2 "custom_footprints:MPJA_LED_SWITCH" H 7450 4200 50  0001 C CNN
F 3 "" H 7450 4200 50  0001 C CNN
	1    7450 3900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_LED SW_ENTER1
U 1 1 5E1E7F63
P 7500 4950
F 0 "SW_ENTER1" H 7500 5335 50  0000 C CNN
F 1 "SW_Push_LED" H 7500 5244 50  0000 C CNN
F 2 "custom_footprints:MPJA_LED_SWITCH" H 7500 5250 50  0001 C CNN
F 3 "" H 7500 5250 50  0001 C CNN
	1    7500 4950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_LED SW_DOWN1
U 1 1 5E1E7FA7
P 7450 6200
F 0 "SW_DOWN1" H 7450 6585 50  0000 C CNN
F 1 "SW_Push_LED" H 7450 6494 50  0000 C CNN
F 2 "custom_footprints:MPJA_LED_SWITCH" H 7450 6500 50  0001 C CNN
F 3 "" H 7450 6500 50  0001 C CNN
	1    7450 6200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_LED SW_LEFT1
U 1 1 5E1E7FF4
P 5650 4950
F 0 "SW_LEFT1" H 5650 5335 50  0000 C CNN
F 1 "SW_Push_LED" H 5650 5244 50  0000 C CNN
F 2 "custom_footprints:MPJA_LED_SWITCH" H 5650 5250 50  0001 C CNN
F 3 "" H 5650 5250 50  0001 C CNN
	1    5650 4950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_LED SW_RIGHT1
U 1 1 5E1E8036
P 9300 4950
F 0 "SW_RIGHT1" H 9300 5335 50  0000 C CNN
F 1 "SW_Push_LED" H 9300 5244 50  0000 C CNN
F 2 "custom_footprints:MPJA_LED_SWITCH" H 9300 5250 50  0001 C CNN
F 3 "" H 9300 5250 50  0001 C CNN
	1    9300 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E1E868C
P 4300 1700
F 0 "R4" H 4370 1746 50  0000 L CNN
F 1 "220" H 4370 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4230 1700 50  0001 C CNN
F 3 "~" H 4300 1700 50  0001 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5E1E872A
P 4300 1900
F 0 "#PWR0101" H 4300 1750 50  0001 C CNN
F 1 "+5V" H 4315 2073 50  0000 C CNN
F 2 "" H 4300 1900 50  0001 C CNN
F 3 "" H 4300 1900 50  0001 C CNN
	1    4300 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1350 4400 1500
Wire Wire Line
	4300 1850 4300 1900
Wire Wire Line
	4300 1450 4300 1350
$Comp
L Device:R_POT RV1
U 1 1 5E1E8BD1
P 5800 2150
F 0 "RV1" H 5731 2104 50  0000 R CNN
F 1 "10k" H 5731 2195 50  0000 R CNN
F 2 "Connectors:1X03_LOCK_LONGPADS" H 5800 2150 50  0001 C CNN
F 3 "~" H 5800 2150 50  0001 C CNN
	1    5800 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E1E8C66
P 5800 2400
F 0 "#PWR0102" H 5800 2150 50  0001 C CNN
F 1 "GND" H 5805 2227 50  0000 C CNN
F 2 "" H 5800 2400 50  0001 C CNN
F 3 "" H 5800 2400 50  0001 C CNN
	1    5800 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5E1E8CAA
P 5850 1900
F 0 "#PWR0103" H 5850 1750 50  0001 C CNN
F 1 "+5V" V 5865 2028 50  0000 L CNN
F 2 "" H 5850 1900 50  0001 C CNN
F 3 "" H 5850 1900 50  0001 C CNN
	1    5850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1900 5800 2000
Wire Wire Line
	5800 2300 5800 2400
Wire Wire Line
	5650 2150 5600 2150
$Comp
L power:+5V #PWR0104
U 1 1 5E1E8F15
P 5700 1450
F 0 "#PWR0104" H 5700 1300 50  0001 C CNN
F 1 "+5V" H 5715 1623 50  0000 C CNN
F 2 "" H 5700 1450 50  0001 C CNN
F 3 "" H 5700 1450 50  0001 C CNN
	1    5700 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 1450 5700 1350
$Comp
L power:GND #PWR0105
U 1 1 5E1E9008
P 5800 1400
F 0 "#PWR0105" H 5800 1150 50  0001 C CNN
F 1 "GND" V 5805 1272 50  0000 R CNN
F 2 "" H 5800 1400 50  0001 C CNN
F 3 "" H 5800 1400 50  0001 C CNN
	1    5800 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1350 5800 1400
Wire Wire Line
	5800 1900 5850 1900
Wire Wire Line
	5600 1350 5600 2150
$Comp
L power:GND #PWR0106
U 1 1 5E1E9403
P 5400 1450
F 0 "#PWR0106" H 5400 1200 50  0001 C CNN
F 1 "GND" H 5405 1277 50  0000 C CNN
F 2 "" H 5400 1450 50  0001 C CNN
F 3 "" H 5400 1450 50  0001 C CNN
	1    5400 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1350 5400 1450
$Comp
L SST_kicad_sym:LCD20x4 LCD1
U 1 1 5E1EA2BB
P 4950 1150
F 0 "LCD1" H 4950 1665 50  0000 C CNN
F 1 "LCD20x4" H 4950 1574 50  0000 C CNN
F 2 "Connectors:1X16_LOCK_LONGPADS" H 4950 1100 50  0001 C CNN
F 3 "" H 4950 1100 50  0001 C CNN
	1    4950 1150
	1    0    0    -1  
$EndComp
NoConn ~ 5200 1350
NoConn ~ 5100 1350
NoConn ~ 5000 1350
NoConn ~ 4900 1350
NoConn ~ 4200 1350
NoConn ~ 4100 1350
$Comp
L SST_kicad_sym:AdafruitItsyM0 U1
U 1 1 5E1EB73D
P 2100 3100
F 0 "U1" H 2100 3915 50  0000 C CNN
F 1 "AdafruitItsyM0" H 2100 3824 50  0000 C CNN
F 2 "custom_footprints:ItsyBitsyM0Exp" H 1750 3500 50  0001 C CNN
F 3 "" H 1750 3500 50  0001 C CNN
	1    2100 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5E1EC344
P 2950 2750
F 0 "#PWR0107" H 2950 2600 50  0001 C CNN
F 1 "+5V" V 2965 2878 50  0000 L CNN
F 2 "" H 2950 2750 50  0001 C CNN
F 3 "" H 2950 2750 50  0001 C CNN
	1    2950 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 2750 2950 2750
$Comp
L power:+5V #PWR0108
U 1 1 5E1EE554
P 10000 2950
F 0 "#PWR0108" H 10000 2800 50  0001 C CNN
F 1 "+5V" V 10015 3078 50  0000 L CNN
F 2 "" H 10000 2950 50  0001 C CNN
F 3 "" H 10000 2950 50  0001 C CNN
	1    10000 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E1EE55A
P 9800 2950
F 0 "R8" V 9593 2950 50  0000 C CNN
F 1 "330" V 9684 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9730 2950 50  0001 C CNN
F 3 "~" H 9800 2950 50  0001 C CNN
	1    9800 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5E1EE693
P 8100 6350
F 0 "#PWR0109" H 8100 6200 50  0001 C CNN
F 1 "+5V" V 8115 6478 50  0000 L CNN
F 2 "" H 8100 6350 50  0001 C CNN
F 3 "" H 8100 6350 50  0001 C CNN
	1    8100 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E1EE699
P 7900 6350
F 0 "R5" V 7693 6350 50  0000 C CNN
F 1 "330" V 7784 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7830 6350 50  0001 C CNN
F 3 "~" H 7900 6350 50  0001 C CNN
	1    7900 6350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5E1EE93F
P 8100 4050
F 0 "#PWR0110" H 8100 3900 50  0001 C CNN
F 1 "+5V" V 8115 4178 50  0000 L CNN
F 2 "" H 8100 4050 50  0001 C CNN
F 3 "" H 8100 4050 50  0001 C CNN
	1    8100 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E1EE945
P 7900 4050
F 0 "R6" V 7693 4050 50  0000 C CNN
F 1 "330" V 7784 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7830 4050 50  0001 C CNN
F 3 "~" H 7900 4050 50  0001 C CNN
	1    7900 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E1EDB1C
P 9750 5100
F 0 "R9" V 9543 5100 50  0000 C CNN
F 1 "330" V 9634 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9680 5100 50  0001 C CNN
F 3 "~" H 9750 5100 50  0001 C CNN
	1    9750 5100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5E1EDAB3
P 9950 5100
F 0 "#PWR0111" H 9950 4950 50  0001 C CNN
F 1 "+5V" V 9965 5228 50  0000 L CNN
F 2 "" H 9950 5100 50  0001 C CNN
F 3 "" H 9950 5100 50  0001 C CNN
	1    9950 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E1EF636
P 7950 5100
F 0 "R7" V 7743 5100 50  0000 C CNN
F 1 "330" V 7834 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7880 5100 50  0001 C CNN
F 3 "~" H 7950 5100 50  0001 C CNN
	1    7950 5100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5E1EF63C
P 8150 5100
F 0 "#PWR0112" H 8150 4950 50  0001 C CNN
F 1 "+5V" V 8165 5228 50  0000 L CNN
F 2 "" H 8150 5100 50  0001 C CNN
F 3 "" H 8150 5100 50  0001 C CNN
	1    8150 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E1EF783
P 6050 5150
F 0 "R2" V 5843 5150 50  0000 C CNN
F 1 "330" V 5934 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5980 5150 50  0001 C CNN
F 3 "~" H 6050 5150 50  0001 C CNN
	1    6050 5150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5E1EF789
P 6250 5150
F 0 "#PWR0113" H 6250 5000 50  0001 C CNN
F 1 "+5V" V 6265 5278 50  0000 L CNN
F 2 "" H 6250 5150 50  0001 C CNN
F 3 "" H 6250 5150 50  0001 C CNN
	1    6250 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 3900 7750 3900
Wire Wire Line
	7750 3900 7750 4050
Wire Wire Line
	8050 4050 8100 4050
Wire Wire Line
	9550 2750 9650 2750
Wire Wire Line
	9650 2750 9650 2950
Wire Wire Line
	9950 2950 10000 2950
Wire Wire Line
	9500 4950 9600 4950
Wire Wire Line
	9600 4950 9600 5100
Wire Wire Line
	9900 5100 9950 5100
Wire Wire Line
	7700 4950 7800 4950
Wire Wire Line
	7800 4950 7800 5100
Wire Wire Line
	8100 5100 8150 5100
Wire Wire Line
	7650 6200 7750 6200
Wire Wire Line
	7750 6200 7750 6350
Wire Wire Line
	8050 6350 8100 6350
Wire Wire Line
	5850 4950 5900 4950
Wire Wire Line
	5900 4950 5900 5150
Wire Wire Line
	6200 5150 6250 5150
Text GLabel 3250 3050 2    50   Output ~ 0
PWM_LCD
Text GLabel 3150 3150 2    50   Output ~ 0
PWM_BUTTONS
Wire Wire Line
	2800 3150 3150 3150
Wire Wire Line
	4300 1550 4300 1500
Wire Wire Line
	4300 1500 4400 1500
$Comp
L power:GND #PWR0114
U 1 1 5E1FA9B6
P 3900 2250
F 0 "#PWR0114" H 3900 2000 50  0001 C CNN
F 1 "GND" H 3905 2077 50  0000 C CNN
F 2 "" H 3900 2250 50  0001 C CNN
F 3 "" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1450 3900 1500
Wire Wire Line
	3900 1450 4300 1450
$Comp
L Device:R R3
U 1 1 5E1FB20F
P 3400 1700
F 0 "R3" V 3193 1700 50  0000 C CNN
F 1 "100" V 3284 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3330 1700 50  0001 C CNN
F 3 "~" H 3400 1700 50  0001 C CNN
	1    3400 1700
	0    1    1    0   
$EndComp
Text GLabel 3000 1700 0    50   Input ~ 0
PWM_LCD
Text GLabel 1200 1100 0    50   Input ~ 0
PWM_BUTTONS
$Comp
L Device:R R1
U 1 1 5E1FEF71
P 1800 1100
F 0 "R1" V 1593 1100 50  0000 C CNN
F 1 "100" V 1684 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1730 1100 50  0001 C CNN
F 3 "~" H 1800 1100 50  0001 C CNN
	1    1800 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E1FF061
P 2300 1750
F 0 "#PWR0115" H 2300 1500 50  0001 C CNN
F 1 "GND" H 2305 1577 50  0000 C CNN
F 2 "" H 2300 1750 50  0001 C CNN
F 3 "" H 2300 1750 50  0001 C CNN
	1    2300 1750
	1    0    0    -1  
$EndComp
Text GLabel 2450 750  2    50   Input ~ 0
B_LEDS
Wire Wire Line
	2300 900  2300 750 
Wire Wire Line
	2300 750  2450 750 
Text GLabel 5300 5050 0    50   Output ~ 0
B_LEDS
Text GLabel 7150 6300 0    50   Output ~ 0
B_LEDS
Text GLabel 7150 5050 0    50   Output ~ 0
B_LEDS
Text GLabel 7100 4000 0    50   Output ~ 0
B_LEDS
Text GLabel 9000 5050 0    50   Output ~ 0
B_LEDS
Text GLabel 9050 2850 0    50   Output ~ 0
B_LEDS
$Comp
L power:GND #PWR0116
U 1 1 5E2061AF
P 9800 2600
F 0 "#PWR0116" H 9800 2350 50  0001 C CNN
F 1 "GND" H 9805 2427 50  0000 C CNN
F 2 "" H 9800 2600 50  0001 C CNN
F 3 "" H 9800 2600 50  0001 C CNN
	1    9800 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5E206285
P 7800 3750
F 0 "#PWR0117" H 7800 3500 50  0001 C CNN
F 1 "GND" H 7805 3577 50  0000 C CNN
F 2 "" H 7800 3750 50  0001 C CNN
F 3 "" H 7800 3750 50  0001 C CNN
	1    7800 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5E20630B
P 7850 4800
F 0 "#PWR0118" H 7850 4550 50  0001 C CNN
F 1 "GND" H 7855 4627 50  0000 C CNN
F 2 "" H 7850 4800 50  0001 C CNN
F 3 "" H 7850 4800 50  0001 C CNN
	1    7850 4800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5E206779
P 6000 4800
F 0 "#PWR0119" H 6000 4550 50  0001 C CNN
F 1 "GND" H 6005 4627 50  0000 C CNN
F 2 "" H 6000 4800 50  0001 C CNN
F 3 "" H 6000 4800 50  0001 C CNN
	1    6000 4800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5E206C5F
P 7800 6050
F 0 "#PWR0120" H 7800 5800 50  0001 C CNN
F 1 "GND" H 7805 5877 50  0000 C CNN
F 2 "" H 7800 6050 50  0001 C CNN
F 3 "" H 7800 6050 50  0001 C CNN
	1    7800 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 5050 5400 5050
Wire Wire Line
	5400 5050 5400 4950
Wire Wire Line
	5400 4950 5450 4950
Wire Wire Line
	7150 5050 7250 5050
Wire Wire Line
	7250 5050 7250 4950
Wire Wire Line
	7250 4950 7300 4950
Wire Wire Line
	7150 6300 7200 6300
Wire Wire Line
	7200 6300 7200 6200
Wire Wire Line
	7200 6200 7250 6200
Wire Wire Line
	9000 5050 9050 5050
Wire Wire Line
	9050 5050 9050 4950
Wire Wire Line
	9050 4950 9100 4950
Wire Wire Line
	9050 2850 9100 2850
Wire Wire Line
	9100 2850 9100 2750
Wire Wire Line
	9100 2750 9150 2750
Wire Wire Line
	7100 4000 7200 4000
Wire Wire Line
	7200 4000 7200 3900
Wire Wire Line
	7200 3900 7250 3900
Wire Wire Line
	9550 2650 9800 2650
Wire Wire Line
	9800 2650 9800 2600
Wire Wire Line
	7650 3800 7800 3800
Wire Wire Line
	7800 3800 7800 3750
Wire Wire Line
	7700 4850 7850 4850
Wire Wire Line
	7850 4850 7850 4800
$Comp
L power:GND #PWR0121
U 1 1 5E21A30B
P 9650 4800
F 0 "#PWR0121" H 9650 4550 50  0001 C CNN
F 1 "GND" H 9655 4627 50  0000 C CNN
F 2 "" H 9650 4800 50  0001 C CNN
F 3 "" H 9650 4800 50  0001 C CNN
	1    9650 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 4850 9650 4850
Wire Wire Line
	9650 4850 9650 4800
Text GLabel 7100 3800 0    50   Output ~ 0
B_UP
Text GLabel 9000 2650 0    50   Output ~ 0
B_ESC
Text GLabel 9000 4850 0    50   Output ~ 0
B_RIGHT
Text GLabel 5300 4850 0    50   Output ~ 0
B_LEFT
Text GLabel 7150 4850 0    50   Output ~ 0
B_ENTER
Text GLabel 7150 6100 0    50   Output ~ 0
B_DOWN
Wire Wire Line
	9000 2650 9150 2650
Wire Wire Line
	9000 4850 9100 4850
Wire Wire Line
	7150 4850 7300 4850
Wire Wire Line
	7150 6100 7250 6100
Wire Wire Line
	5300 4850 5450 4850
Wire Wire Line
	7100 3800 7250 3800
Text GLabel 950  3250 0    50   Output ~ 0
B_UP
Text GLabel 950  3100 0    50   Output ~ 0
B_ENTER
Text GLabel 950  2950 0    50   Output ~ 0
B_DOWN
Text GLabel 950  3400 0    50   Output ~ 0
B_LEFT
Text GLabel 950  2800 0    50   Output ~ 0
B_RIGHT
Text GLabel 950  3550 0    50   Output ~ 0
B_ESC
$Comp
L power:GND #PWR0122
U 1 1 5E228C72
P 2950 2650
F 0 "#PWR0122" H 2950 2400 50  0001 C CNN
F 1 "GND" V 2955 2522 50  0000 R CNN
F 2 "" H 2950 2650 50  0001 C CNN
F 3 "" H 2950 2650 50  0001 C CNN
	1    2950 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 2650 2950 2650
Wire Wire Line
	1400 3050 1200 3050
Wire Wire Line
	1200 3050 1200 2800
Wire Wire Line
	1200 2800 950  2800
Wire Wire Line
	1400 3150 1150 3150
Wire Wire Line
	1150 3150 1150 2950
Wire Wire Line
	1150 2950 950  2950
Wire Wire Line
	1400 3250 1100 3250
Wire Wire Line
	1100 3250 1100 3100
Wire Wire Line
	1100 3100 950  3100
Wire Wire Line
	950  3250 1050 3250
Wire Wire Line
	1050 3250 1050 3350
Wire Wire Line
	1050 3350 1400 3350
Wire Wire Line
	950  3400 1000 3400
Wire Wire Line
	1000 3400 1000 3450
Wire Wire Line
	1000 3450 1400 3450
Wire Wire Line
	1400 3850 1050 3850
Wire Wire Line
	1050 3850 1050 3550
Wire Wire Line
	1050 3550 950  3550
NoConn ~ 1400 2550
NoConn ~ 1400 2750
NoConn ~ 1400 2850
NoConn ~ 1400 2950
NoConn ~ 1400 3550
NoConn ~ 1400 3650
NoConn ~ 1400 3750
NoConn ~ 1900 4100
NoConn ~ 2000 4100
NoConn ~ 2800 3650
NoConn ~ 2800 3550
NoConn ~ 2800 3450
NoConn ~ 2800 2550
Wire Wire Line
	7650 6100 7800 6100
Wire Wire Line
	7800 6100 7800 6050
Wire Wire Line
	5850 4850 6000 4850
Wire Wire Line
	6000 4850 6000 4800
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5E320154
P 2200 1100
F 0 "Q1" H 2405 1146 50  0000 L CNN
F 1 "2N7002PW" H 2405 1055 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 2400 1200 50  0001 C CNN
F 3 "~" H 2200 1100 50  0001 C CNN
	1    2200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 5E3287F2
P 3800 1700
F 0 "Q2" H 4005 1746 50  0000 L CNN
F 1 "2N7002PW" H 4005 1655 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 4000 1800 50  0001 C CNN
F 3 "~" H 3800 1700 50  0001 C CNN
	1    3800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5E328B34
P 1500 1350
F 0 "R10" H 1570 1396 50  0000 L CNN
F 1 "1M" H 1570 1305 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1430 1350 50  0001 C CNN
F 3 "~" H 1500 1350 50  0001 C CNN
	1    1500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1300 2300 1600
Connection ~ 2300 1600
Wire Wire Line
	2300 1600 2300 1750
$Comp
L Device:R R11
U 1 1 5E347035
P 3150 1900
F 0 "R11" H 3220 1946 50  0000 L CNN
F 1 "1M" H 3220 1855 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3080 1900 50  0001 C CNN
F 3 "~" H 3150 1900 50  0001 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1900 3900 2100
Wire Wire Line
	3150 2050 3150 2100
Wire Wire Line
	3150 2100 3900 2100
Connection ~ 3900 2100
Wire Wire Line
	3900 2100 3900 2250
Wire Wire Line
	3000 1700 3150 1700
Wire Wire Line
	3150 1750 3150 1700
Connection ~ 3150 1700
Wire Wire Line
	3150 1700 3250 1700
Wire Wire Line
	3550 1700 3600 1700
Wire Wire Line
	1500 1100 1650 1100
Wire Wire Line
	1950 1100 2000 1100
Wire Wire Line
	1500 1600 1500 1500
Wire Wire Line
	1500 1600 2300 1600
Wire Wire Line
	1500 1200 1500 1100
Wire Wire Line
	1500 1100 1200 1100
Connection ~ 1500 1100
$Comp
L 4xxx:4504 U2
U 1 1 5E52347A
P 3050 6200
F 0 "U2" H 3500 5450 50  0000 C CNN
F 1 "MC14504B" H 3450 5300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3050 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4504b.pdf" H 2400 5850 50  0001 C CNN
	1    3050 6200
	1    0    0    -1  
$EndComp
Text GLabel 3250 2850 2    50   Output ~ 0
DB4MC
Text GLabel 3250 2950 2    50   Output ~ 0
DB5MC
Text GLabel 3200 3250 2    50   Output ~ 0
DB6MC
Text GLabel 3200 3350 2    50   Output ~ 0
DB7MC
Text GLabel 2300 4250 3    50   Output ~ 0
ENMC
Text GLabel 4500 2000 3    50   Input ~ 0
DB7LCD
Text GLabel 4600 2000 3    50   Input ~ 0
DB6LCD
Text GLabel 4700 2000 3    50   Input ~ 0
DB5LCD
Text GLabel 4800 2000 3    50   Input ~ 0
DB4LCD
Text GLabel 5300 2000 3    50   Input ~ 0
ENLCD
Text GLabel 3600 6300 2    50   Output ~ 0
DB7LCD
Text GLabel 3600 6100 2    50   Output ~ 0
DB6LCD
Text GLabel 3600 6500 2    50   Output ~ 0
DB5LCD
Text GLabel 3600 5900 2    50   Output ~ 0
DB4LCD
Text GLabel 3600 5700 2    50   Output ~ 0
ENLCD
Text GLabel 2500 6300 0    50   Input ~ 0
DB7MC
Text GLabel 2500 6100 0    50   Input ~ 0
DB6MC
Text GLabel 2500 6500 0    50   Input ~ 0
DB5MC
Text GLabel 2500 5900 0    50   Input ~ 0
DB4MC
Text GLabel 2500 5700 0    50   Input ~ 0
ENMC
Wire Wire Line
	2500 5700 2600 5700
Wire Wire Line
	2500 5900 2600 5900
Wire Wire Line
	2500 6100 2600 6100
Wire Wire Line
	2500 6300 2600 6300
Wire Wire Line
	2500 6500 2600 6500
Wire Wire Line
	3500 5700 3600 5700
Wire Wire Line
	3500 5900 3600 5900
Wire Wire Line
	3500 6100 3600 6100
Wire Wire Line
	3500 6300 3600 6300
Wire Wire Line
	3500 6500 3600 6500
$Comp
L power:GND #PWR0123
U 1 1 5E57660E
P 3050 7300
F 0 "#PWR0123" H 3050 7050 50  0001 C CNN
F 1 "GND" H 3055 7127 50  0000 C CNN
F 2 "" H 3050 7300 50  0001 C CNN
F 3 "" H 3050 7300 50  0001 C CNN
	1    3050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 7100 3050 7200
Wire Wire Line
	2600 6900 2500 6900
Wire Wire Line
	2500 6900 2500 7200
Wire Wire Line
	2500 7200 3050 7200
Connection ~ 3050 7200
Wire Wire Line
	3050 7200 3050 7300
Wire Wire Line
	1300 2650 1400 2650
$Comp
L power:+3.3V #PWR0124
U 1 1 5E58ED44
P 2950 5100
F 0 "#PWR0124" H 2950 4950 50  0001 C CNN
F 1 "+3.3V" H 2965 5273 50  0000 C CNN
F 2 "" H 2950 5100 50  0001 C CNN
F 3 "" H 2950 5100 50  0001 C CNN
	1    2950 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0125
U 1 1 5E58EEC8
P 1300 2650
F 0 "#PWR0125" H 1300 2500 50  0001 C CNN
F 1 "+3.3V" V 1315 2778 50  0000 L CNN
F 2 "" H 1300 2650 50  0001 C CNN
F 3 "" H 1300 2650 50  0001 C CNN
	1    1300 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 5E58EFA9
P 3150 5100
F 0 "#PWR0126" H 3150 4950 50  0001 C CNN
F 1 "+5V" H 3165 5273 50  0000 C CNN
F 2 "" H 3150 5100 50  0001 C CNN
F 3 "" H 3150 5100 50  0001 C CNN
	1    3150 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E58F0D0
P 2600 5200
F 0 "C1" V 2852 5200 50  0000 C CNN
F 1 "0.1u" V 2761 5200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2638 5050 50  0001 C CNN
F 3 "~" H 2600 5200 50  0001 C CNN
	1    2600 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E58F239
P 3450 5200
F 0 "C2" V 3198 5200 50  0000 C CNN
F 1 "0.1u" V 3289 5200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3488 5050 50  0001 C CNN
F 3 "~" H 3450 5200 50  0001 C CNN
	1    3450 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5E58F55D
P 3700 5200
F 0 "#PWR0127" H 3700 4950 50  0001 C CNN
F 1 "GND" V 3705 5072 50  0000 R CNN
F 2 "" H 3700 5200 50  0001 C CNN
F 3 "" H 3700 5200 50  0001 C CNN
	1    3700 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5E58F615
P 2350 5200
F 0 "#PWR0128" H 2350 4950 50  0001 C CNN
F 1 "GND" V 2355 5072 50  0000 R CNN
F 2 "" H 2350 5200 50  0001 C CNN
F 3 "" H 2350 5200 50  0001 C CNN
	1    2350 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 5200 2950 5200
Wire Wire Line
	2950 5200 2950 5100
Wire Wire Line
	2950 5300 2950 5200
Connection ~ 2950 5200
Wire Wire Line
	3150 5100 3150 5200
Wire Wire Line
	3300 5200 3150 5200
Connection ~ 3150 5200
Wire Wire Line
	3150 5200 3150 5300
Wire Wire Line
	3600 5200 3700 5200
Wire Wire Line
	2350 5200 2450 5200
Wire Wire Line
	2800 2850 3250 2850
Wire Wire Line
	4500 2000 4500 1350
Wire Wire Line
	2800 2950 3250 2950
Wire Wire Line
	4600 2000 4600 1350
Wire Wire Line
	2800 3250 3200 3250
Wire Wire Line
	4700 2000 4700 1350
Wire Wire Line
	2800 3350 3200 3350
Wire Wire Line
	4800 1350 4800 2000
Wire Wire Line
	2200 4100 2200 4250
Wire Wire Line
	2800 3050 3250 3050
Text GLabel 2200 4250 3    50   Output ~ 0
RSMC
Text GLabel 5500 2000 3    50   Input ~ 0
RSLCD
Text GLabel 2500 6700 0    50   Input ~ 0
RSMC
Text GLabel 3600 6700 2    50   Output ~ 0
RSLCD
Wire Wire Line
	5300 1350 5300 2000
Wire Wire Line
	5500 1350 5500 2000
Wire Wire Line
	2500 6700 2600 6700
Wire Wire Line
	3500 6700 3600 6700
NoConn ~ 2100 4100
Wire Wire Line
	2300 4100 2300 4250
$Comp
L Connector:Screw_Terminal_01x04 J1
U 1 1 5E6D450A
P 9600 950
F 0 "J1" H 9680 942 50  0000 L CNN
F 1 "NEO-6M" H 9680 851 50  0000 L CNN
F 2 "Connectors:1X04_LOCK_LONGPADS" H 9600 950 50  0001 C CNN
F 3 "~" H 9600 950 50  0001 C CNN
	1    9600 950 
	1    0    0    -1  
$EndComp
Text GLabel 2950 3750 2    50   Output ~ 0
TXMC
Text GLabel 2950 3850 2    50   Input ~ 0
RXMC
Wire Wire Line
	2800 3750 2950 3750
Wire Wire Line
	2800 3850 2950 3850
Text GLabel 9200 1050 0    50   Input ~ 0
TXMC
Text GLabel 9200 950  0    50   Output ~ 0
RXMC
$Comp
L power:GND #PWR0129
U 1 1 5E6F0069
P 9300 800
F 0 "#PWR0129" H 9300 550 50  0001 C CNN
F 1 "GND" H 9305 627 50  0000 C CNN
F 2 "" H 9300 800 50  0001 C CNN
F 3 "" H 9300 800 50  0001 C CNN
	1    9300 800 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 800  9300 850 
Wire Wire Line
	9300 850  9400 850 
Wire Wire Line
	9200 950  9400 950 
Wire Wire Line
	9200 1050 9400 1050
Wire Wire Line
	9300 1200 9300 1150
Wire Wire Line
	9300 1150 9400 1150
Text Notes 9250 950  0    50   ~ 0
NTX
Text Notes 9250 1050 0    50   ~ 0
NRX
$Comp
L power:+3.3V #PWR?
U 1 1 5E714FFD
P 9300 1200
F 0 "#PWR?" H 9300 1050 50  0001 C CNN
F 1 "+3.3V" H 9315 1373 50  0000 C CNN
F 2 "" H 9300 1200 50  0001 C CNN
F 3 "" H 9300 1200 50  0001 C CNN
	1    9300 1200
	-1   0    0    1   
$EndComp
$EndSCHEMATC
