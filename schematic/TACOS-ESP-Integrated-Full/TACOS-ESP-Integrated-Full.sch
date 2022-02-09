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
P 1800 5000
F 0 "D3" H 1793 5217 50  0000 C CNN
F 1 "POWER LED" H 1793 5126 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1800 5000 50  0001 C CNN
F 3 "~" H 1800 5000 50  0001 C CNN
	1    1800 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F28AE51
P 1800 5850
F 0 "R4" V 2007 5850 50  0000 C CNN
F 1 "R330" V 1916 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1730 5850 50  0001 C CNN
F 3 "~" H 1800 5850 50  0001 C CNN
	1    1800 5850
	1    0    0    -1  
$EndComp
Text GLabel 1500 3750 0    50   Input ~ 0
ERROR_NET
Text GLabel 1800 6000 3    50   Input ~ 0
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
Wire Wire Line
	1650 5000 1550 5000
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
P 1700 5500
F 0 "Q1" H 1890 5546 50  0000 L CNN
F 1 "PN2222A" H 1890 5455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 5425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1700 5500 50  0001 L CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
Text GLabel 1800 4850 1    50   Input ~ 0
5V
Text GLabel 1500 5500 0    50   Input ~ 0
POWER_NET
$Comp
L Device:R R10
U 1 1 61E86BF4
P 3100 5850
F 0 "R10" V 3307 5850 50  0000 C CNN
F 1 "R?" V 3216 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Bare_Metal_Element_L12.4mm_W4.8mm_P11.40mm" V 3030 5850 50  0001 C CNN
F 3 "~" H 3100 5850 50  0001 C CNN
	1    3100 5850
	1    0    0    -1  
$EndComp
Text GLabel 3100 6000 3    50   Input ~ 0
GND
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 61E86BFC
P 3000 5500
F 0 "Q2" H 3190 5546 50  0000 L CNN
F 1 "PN2222A" H 3190 5455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3200 5425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 3000 5500 50  0001 L CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
Text GLabel 3100 4850 1    50   Input ~ 0
5V
Text GLabel 2800 5500 0    50   Input ~ 0
POWER_NET
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 61E88185
P 2900 5100
F 0 "J1" V 2772 5180 50  0000 L CNN
F 1 "Relay" V 2863 5180 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2900 5100 50  0001 C CNN
F 3 "~" H 2900 5100 50  0001 C CNN
	1    2900 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 5000 3100 4850
Wire Wire Line
	3100 5100 3100 5300
Wire Wire Line
	1800 5150 1800 5300
$Comp
L Device:LED D2
U 1 1 61E9BA62
P 1800 3250
F 0 "D2" H 1793 3467 50  0000 C CNN
F 1 "POWER LED" H 1793 3376 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1800 3250 50  0001 C CNN
F 3 "~" H 1800 3250 50  0001 C CNN
	1    1800 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61E9BA68
P 1800 4100
F 0 "R3" V 2007 4100 50  0000 C CNN
F 1 "R330" V 1916 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1730 4100 50  0001 C CNN
F 3 "~" H 1800 4100 50  0001 C CNN
	1    1800 4100
	1    0    0    -1  
$EndComp
Text GLabel 1800 4250 3    50   Input ~ 0
GND
Wire Wire Line
	1650 3250 1550 3250
$Comp
L Transistor_BJT:PN2222A Q3
U 1 1 61E9BA70
P 1700 3750
F 0 "Q3" H 1890 3796 50  0000 L CNN
F 1 "PN2222A" H 1890 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 3675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1700 3750 50  0001 L CNN
	1    1700 3750
	1    0    0    -1  
$EndComp
Text GLabel 1800 3100 1    50   Input ~ 0
5V
$Comp
L Device:R R11
U 1 1 61E9BA78
P 3100 4100
F 0 "R11" V 3307 4100 50  0000 C CNN
F 1 "R?" V 3216 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Bare_Metal_Element_L12.4mm_W4.8mm_P11.40mm" V 3030 4100 50  0001 C CNN
F 3 "~" H 3100 4100 50  0001 C CNN
	1    3100 4100
	1    0    0    -1  
$EndComp
Text GLabel 3100 4250 3    50   Input ~ 0
GND
$Comp
L Transistor_BJT:PN2222A Q4
U 1 1 61E9BA7F
P 3000 3750
F 0 "Q4" H 3190 3796 50  0000 L CNN
F 1 "PN2222A" H 3190 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3200 3675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 3000 3750 50  0001 L CNN
	1    3000 3750
	1    0    0    -1  
$EndComp
Text GLabel 3100 3100 1    50   Input ~ 0
5V
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 61E9BA87
P 2900 3350
F 0 "J3" V 2772 3430 50  0000 L CNN
F 1 "Relay" V 2863 3430 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2900 3350 50  0001 C CNN
F 3 "~" H 2900 3350 50  0001 C CNN
	1    2900 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3250 3100 3100
Wire Wire Line
	3100 3350 3100 3550
Wire Wire Line
	1800 3400 1800 3550
Text GLabel 2800 3750 0    50   Input ~ 0
ERROR_NET
$Comp
L Device:LED D4
U 1 1 62026746
P 4650 5000
F 0 "D4" H 4643 5217 50  0000 C CNN
F 1 "POWER LED" H 4643 5126 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 4650 5000 50  0001 C CNN
F 3 "~" H 4650 5000 50  0001 C CNN
	1    4650 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 6202674C
P 4650 5850
F 0 "R12" V 4857 5850 50  0000 C CNN
F 1 "R330" V 4766 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 5850 50  0001 C CNN
F 3 "~" H 4650 5850 50  0001 C CNN
	1    4650 5850
	1    0    0    -1  
$EndComp
Text GLabel 4650 6000 3    50   Input ~ 0
GND
Wire Wire Line
	4500 5000 4400 5000
$Comp
L Transistor_BJT:PN2222A Q5
U 1 1 62026754
P 4550 5500
F 0 "Q5" H 4740 5546 50  0000 L CNN
F 1 "PN2222A" H 4740 5455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4750 5425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 4550 5500 50  0001 L CNN
	1    4550 5500
	1    0    0    -1  
$EndComp
Text GLabel 4650 4850 1    50   Input ~ 0
5V
Text GLabel 4350 5500 0    50   Input ~ 0
STATUS_NET
Wire Wire Line
	4650 5150 4650 5300
Text GLabel 5900 5600 0    50   Input ~ 0
GND
Text GLabel 6000 5600 2    50   Input ~ 0
5V
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 6207987B
P 5900 5400
F 0 "J4" V 5772 5480 50  0000 L CNN
F 1 "Vin" V 5991 5480 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 5900 5400 50  0001 C CNN
F 3 "~" H 5900 5400 50  0001 C CNN
	1    5900 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6202ADFF
P 1500 1850
F 0 "R2" V 1707 1850 50  0000 C CNN
F 1 "R330" V 1616 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 1850 50  0001 C CNN
F 3 "~" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Text GLabel 1500 2000 3    50   Input ~ 0
GND
Text GLabel 1500 1400 1    50   Input ~ 0
5V
$Comp
L Device:LED D1
U 1 1 6202F7AF
P 1500 1550
F 0 "D1" H 1493 1767 50  0000 C CNN
F 1 "SYSTEM LED" H 1493 1676 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1500 1550 50  0001 C CNN
F 3 "~" H 1500 1550 50  0001 C CNN
	1    1500 1550
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5F2894AE
P 2550 1450
F 0 "SW1" H 2550 1685 50  0000 C CNN
F 1 "SW_ARM" H 2550 1594 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2550 1450 50  0001 C CNN
F 3 "~" H 2550 1450 50  0001 C CNN
	1    2550 1450
	0    -1   -1   0   
$EndComp
Text GLabel 2550 1250 1    50   Input ~ 0
3V3
$Comp
L Device:R R1
U 1 1 5F2A5D4B
P 2550 1950
F 0 "R1" V 2757 1950 50  0000 C CNN
F 1 "R330" V 2666 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2480 1950 50  0001 C CNN
F 3 "~" H 2550 1950 50  0001 C CNN
	1    2550 1950
	1    0    0    -1  
$EndComp
Text GLabel 2550 2100 3    50   Input ~ 0
GND
Text GLabel 2650 1750 2    50   Input ~ 0
SWITCH
Wire Wire Line
	2550 1650 2550 1750
Wire Wire Line
	2550 1750 2650 1750
Connection ~ 2550 1750
Wire Wire Line
	2550 1750 2550 1800
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
$EndSCHEMATC
