EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
Text GLabel 4450 4200 0    50   Input ~ 0
RST
$Comp
L Device:LED D3
U 1 1 5F2889AC
P 7800 3250
F 0 "D3" H 7793 3467 50  0000 C CNN
F 1 "Power LED" H 7793 3376 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7800 3250 50  0001 C CNN
F 3 "~" H 7800 3250 50  0001 C CNN
	1    7800 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F28AE51
P 7800 2950
F 0 "R4" V 8007 2950 50  0000 C CNN
F 1 "R330" V 7916 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 2950 50  0001 C CNN
F 3 "~" H 7800 2950 50  0001 C CNN
	1    7800 2950
	1    0    0    -1  
$EndComp
Text GLabel 7200 1800 0    50   Input ~ 0
ERROR_NET
Text GLabel 7800 3800 3    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5F285F64
P 5250 3900
F 0 "J2" H 5330 3892 50  0000 L CNN
F 1 "MRC522" H 5330 3801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5250 3900 50  0001 C CNN
F 3 "~" H 5250 3900 50  0001 C CNN
	1    5250 3900
	1    0    0    -1  
$EndComp
Text GLabel 4450 3900 0    50   Input ~ 0
MISO
Text GLabel 4450 3800 0    50   Input ~ 0
MOSI
Text GLabel 4450 4100 0    50   Input ~ 0
GND
Text GLabel 4450 4300 0    50   Input ~ 0
3V3
Text GLabel 4450 3700 0    50   Input ~ 0
SCK
Text GLabel 4450 3600 0    50   Input ~ 0
SS
$Comp
L Device:R R5
U 1 1 600954A4
P 4750 3600
F 0 "R5" V 4753 3596 50  0000 C CNN
F 1 "R100" V 4866 3600 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4680 3600 50  0001 C CNN
F 3 "~" H 4750 3600 50  0001 C CNN
	1    4750 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 6009B066
P 4750 3700
F 0 "R6" V 4753 3696 50  0000 C CNN
F 1 "R100" V 4866 3700 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4680 3700 50  0001 C CNN
F 3 "~" H 4750 3700 50  0001 C CNN
	1    4750 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 6009B537
P 4750 3800
F 0 "R7" V 4753 3796 50  0000 C CNN
F 1 "R100" V 4866 3800 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4680 3800 50  0001 C CNN
F 3 "~" H 4750 3800 50  0001 C CNN
	1    4750 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 6009B9F3
P 4750 3900
F 0 "R8" V 4753 3896 50  0000 C CNN
F 1 "R100" V 4866 3900 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4680 3900 50  0001 C CNN
F 3 "~" H 4750 3900 50  0001 C CNN
	1    4750 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 6009BE5B
P 4750 4200
F 0 "R9" V 4753 4196 50  0000 C CNN
F 1 "R100" V 4866 4200 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4680 4200 50  0001 C CNN
F 3 "~" H 4750 4200 50  0001 C CNN
	1    4750 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3600 4600 3600
Wire Wire Line
	4900 3600 5050 3600
Wire Wire Line
	4900 3700 5050 3700
Wire Wire Line
	4900 3800 5050 3800
Wire Wire Line
	4900 3900 5050 3900
Wire Wire Line
	4600 3900 4450 3900
Wire Wire Line
	4450 3800 4600 3800
Wire Wire Line
	4450 3700 4600 3700
Wire Wire Line
	4450 4200 4600 4200
Wire Wire Line
	4900 4200 5050 4200
Wire Wire Line
	5050 4100 4450 4100
Wire Wire Line
	4450 4300 5050 4300
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 61E751C4
P 7700 3600
F 0 "Q1" H 7890 3646 50  0000 L CNN
F 1 "PN2222A" H 7890 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7900 3525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 7700 3600 50  0001 L CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
Text GLabel 7800 2800 1    50   Input ~ 0
5V
Text GLabel 7200 3600 0    50   Input ~ 0
POWER_NET
$Comp
L Device:R R10
U 1 1 61E86BF4
P 9550 3600
F 0 "R10" V 9757 3600 50  0000 C CNN
F 1 "R4.7K" V 9666 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9480 3600 50  0001 C CNN
F 3 "~" H 9550 3600 50  0001 C CNN
	1    9550 3600
	0    1    1    0   
$EndComp
Text GLabel 10000 3800 3    50   Input ~ 0
GND
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 61E86BFC
P 9900 3600
F 0 "Q2" H 10090 3646 50  0000 L CNN
F 1 "PN2222A" H 10090 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10100 3525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 9900 3600 50  0001 L CNN
	1    9900 3600
	1    0    0    -1  
$EndComp
Text GLabel 10000 2950 1    50   Input ~ 0
5V
Text GLabel 9400 3600 0    50   Input ~ 0
POWER_NET
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 61E88185
P 9800 3200
F 0 "J1" V 9672 3280 50  0000 L CNN
F 1 "Power Relay" V 9921 2953 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 9800 3200 50  0001 C CNN
F 3 "~" H 9800 3200 50  0001 C CNN
	1    9800 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3100 10000 3000
Wire Wire Line
	10000 3200 10000 3300
$Comp
L Device:LED D2
U 1 1 61E9BA62
P 7800 1450
F 0 "D2" H 7793 1667 50  0000 C CNN
F 1 "Error LED" H 7793 1576 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7800 1450 50  0001 C CNN
F 3 "~" H 7800 1450 50  0001 C CNN
	1    7800 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61E9BA68
P 7800 1150
F 0 "R3" V 8007 1150 50  0000 C CNN
F 1 "R330" V 7916 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 1150 50  0001 C CNN
F 3 "~" H 7800 1150 50  0001 C CNN
	1    7800 1150
	1    0    0    -1  
$EndComp
Text GLabel 7800 2000 3    50   Input ~ 0
GND
$Comp
L Transistor_BJT:PN2222A Q3
U 1 1 61E9BA70
P 7700 1800
F 0 "Q3" H 7890 1846 50  0000 L CNN
F 1 "PN2222A" H 7890 1755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7900 1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 7700 1800 50  0001 L CNN
	1    7700 1800
	1    0    0    -1  
$EndComp
Text GLabel 7800 1000 1    50   Input ~ 0
5V
$Comp
L Device:R R11
U 1 1 61E9BA78
P 9550 1800
F 0 "R11" V 9757 1800 50  0000 C CNN
F 1 "R4.7K" V 9666 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9480 1800 50  0001 C CNN
F 3 "~" H 9550 1800 50  0001 C CNN
	1    9550 1800
	0    1    1    0   
$EndComp
Text GLabel 10000 2000 3    50   Input ~ 0
GND
Text GLabel 10000 1150 1    50   Input ~ 0
5V
Wire Wire Line
	10000 1300 10000 1200
Wire Wire Line
	10000 1400 10000 1500
Text GLabel 9400 1800 0    50   Input ~ 0
ERROR_NET
$Comp
L Device:LED D4
U 1 1 62026746
P 2550 3500
F 0 "D4" H 2543 3717 50  0000 C CNN
F 1 "Status LED" H 2543 3626 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2550 3500 50  0001 C CNN
F 3 "~" H 2550 3500 50  0001 C CNN
	1    2550 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 6202674C
P 2100 3850
F 0 "R12" V 2307 3850 50  0000 C CNN
F 1 "R330" V 2216 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2030 3850 50  0001 C CNN
F 3 "~" H 2100 3850 50  0001 C CNN
	1    2100 3850
	0    1    1    0   
$EndComp
Text GLabel 2550 4050 3    50   Input ~ 0
GND
$Comp
L Transistor_BJT:PN2222A Q5
U 1 1 62026754
P 2450 3850
F 0 "Q5" H 2640 3896 50  0000 L CNN
F 1 "PN2222A" H 2640 3805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2650 3775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 2450 3850 50  0001 L CNN
	1    2450 3850
	1    0    0    -1  
$EndComp
Text GLabel 2550 3050 1    50   Input ~ 0
5V
Text GLabel 1950 3850 0    50   Input ~ 0
STATUS_NET
Text GLabel 1250 3250 0    50   Input ~ 0
GND
Text GLabel 1350 3250 2    50   Input ~ 0
5V
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 6207987B
P 1250 3050
F 0 "J4" V 1122 3130 50  0000 L CNN
F 1 "Vin" V 1341 3130 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1250 3050 50  0001 C CNN
F 3 "~" H 1250 3050 50  0001 C CNN
	1    1250 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6202ADFF
P 1500 1600
F 0 "R2" V 1707 1600 50  0000 C CNN
F 1 "R330" V 1616 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 1600 50  0001 C CNN
F 3 "~" H 1500 1600 50  0001 C CNN
	1    1500 1600
	1    0    0    -1  
$EndComp
Text GLabel 1500 1750 3    50   Input ~ 0
GND
Text GLabel 1500 1150 1    50   Input ~ 0
5V
$Comp
L Device:LED D1
U 1 1 6202F7AF
P 1500 1300
F 0 "D1" H 1493 1517 50  0000 C CNN
F 1 "SYSTEM LED" H 1493 1426 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1500 1300 50  0001 C CNN
F 3 "~" H 1500 1300 50  0001 C CNN
	1    1500 1300
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5F2894AE
P 2500 1550
F 0 "SW1" H 2500 1785 50  0000 C CNN
F 1 "SW_ARM" H 2500 1694 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2500 1550 50  0001 C CNN
F 3 "~" H 2500 1550 50  0001 C CNN
	1    2500 1550
	0    -1   -1   0   
$EndComp
Text GLabel 2500 1750 3    50   Input ~ 0
GND
Text GLabel 2500 1350 1    50   Input ~ 0
SWITCH
Text GLabel 5100 1550 2    50   Input ~ 0
RST
Text GLabel 5100 1650 2    50   Input ~ 0
SWITCH
Text GLabel 5100 1850 2    50   Input ~ 0
ERROR_NET
Text GLabel 5100 2350 2    50   Input ~ 0
SS
Text GLabel 5100 1750 2    50   Input ~ 0
POWER_NET
Text GLabel 5100 2150 2    50   Input ~ 0
MISO
Text GLabel 5100 2250 2    50   Input ~ 0
MOSI
Text GLabel 5100 2050 2    50   Input ~ 0
SCK
Text GLabel 5100 1950 2    50   Input ~ 0
STATUS_NET
Text GLabel 4800 1150 2    50   Input ~ 0
3V3
Text GLabel 4600 1150 0    50   Input ~ 0
5V
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 5F3D9F6A
P 4700 1950
F 0 "U1" H 4700 1061 50  0000 C CNN
F 1 "WeMos_D1_mini" H 4700 970 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 4700 800 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2850 800 50  0001 C CNN
	1    4700 1950
	1    0    0    -1  
$EndComp
Text GLabel 4700 2750 2    50   Input ~ 0
GND
$Comp
L Device:D D5
U 1 1 6204AA11
P 10200 1350
F 0 "D5" V 10154 1430 50  0000 L CNN
F 1 "D" V 10245 1430 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 10200 1350 50  0001 C CNN
F 3 "~" H 10200 1350 50  0001 C CNN
	1    10200 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 1200 10000 1200
Connection ~ 10000 1200
Wire Wire Line
	10000 1200 10000 1150
Wire Wire Line
	10200 1500 10000 1500
Connection ~ 10000 1500
Wire Wire Line
	10000 1500 10000 1600
$Comp
L Device:D D6
U 1 1 6204CEAC
P 10200 3150
F 0 "D6" V 10154 3230 50  0000 L CNN
F 1 "D" V 10245 3230 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 10200 3150 50  0001 C CNN
F 3 "~" H 10200 3150 50  0001 C CNN
	1    10200 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 3000 10000 3000
Wire Wire Line
	10200 3300 10000 3300
Connection ~ 10000 3000
Wire Wire Line
	10000 3000 10000 2950
Connection ~ 10000 3300
Wire Wire Line
	10000 3300 10000 3400
$Comp
L Device:R R14
U 1 1 62067CD1
P 7350 1800
F 0 "R14" V 7557 1800 50  0000 C CNN
F 1 "R1K" V 7466 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7280 1800 50  0001 C CNN
F 3 "~" H 7350 1800 50  0001 C CNN
	1    7350 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 6206B9F4
P 7350 3600
F 0 "R15" V 7557 3600 50  0000 C CNN
F 1 "R1K" V 7466 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7280 3600 50  0001 C CNN
F 3 "~" H 7350 3600 50  0001 C CNN
	1    7350 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 62071776
P 2550 3200
F 0 "R13" V 2757 3200 50  0000 C CNN
F 1 "R330" V 2666 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 3200 50  0001 C CNN
F 3 "~" H 2550 3200 50  0001 C CNN
	1    2550 3200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q4
U 1 1 61E9BA7F
P 9900 1800
F 0 "Q4" H 10090 1846 50  0000 L CNN
F 1 "PN2222A" H 10090 1755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10100 1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 9900 1800 50  0001 L CNN
	1    9900 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 61E9BA87
P 9800 1400
F 0 "J3" V 9672 1480 50  0000 L CNN
F 1 "Error Relay" V 9921 1378 50  0000 C TNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 9800 1400 50  0001 C CNN
F 3 "~" H 9800 1400 50  0001 C CNN
	1    9800 1400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
