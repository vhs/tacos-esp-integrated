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
Text GLabel 4350 2200 2    50   Input ~ 0
RST
Text GLabel 4350 2300 2    50   Input ~ 0
SWITCH
Text GLabel 4350 2500 2    50   Input ~ 0
ERROR_NET
Text GLabel 4350 3000 2    50   Input ~ 0
SS
Text GLabel 4350 2400 2    50   Input ~ 0
POWER_NET
Text GLabel 4050 4700 0    50   Input ~ 0
RST
$Comp
L Device:LED D3
U 1 1 5F2889AC
P 1400 5500
F 0 "D3" H 1393 5717 50  0000 C CNN
F 1 "POWER LED" H 1393 5626 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1400 5500 50  0001 C CNN
F 3 "~" H 1400 5500 50  0001 C CNN
	1    1400 5500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5F2894AE
P 2100 2100
F 0 "SW1" H 2100 2335 50  0000 C CNN
F 1 "SW_ARM" H 2100 2244 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2100 2100 50  0001 C CNN
F 3 "~" H 2100 2100 50  0001 C CNN
	1    2100 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F28AE51
P 1400 6350
F 0 "R4" V 1607 6350 50  0000 C CNN
F 1 "R330" V 1516 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 6350 50  0001 C CNN
F 3 "~" H 1400 6350 50  0001 C CNN
	1    1400 6350
	1    0    0    -1  
$EndComp
Text GLabel 1100 4250 0    50   Input ~ 0
ERROR_NET
Text GLabel 1400 6500 3    50   Input ~ 0
GND
Text GLabel 2400 2100 2    50   Input ~ 0
3V3
$Comp
L Device:R R1
U 1 1 5F2A5D4B
P 1650 2100
F 0 "R1" V 1857 2100 50  0000 C CNN
F 1 "R330" V 1766 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1580 2100 50  0001 C CNN
F 3 "~" H 1650 2100 50  0001 C CNN
	1    1650 2100
	0    -1   -1   0   
$EndComp
Text GLabel 1400 2100 0    50   Input ~ 0
GND
Text GLabel 1850 2250 3    50   Input ~ 0
SWITCH
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5F285F64
P 4850 4400
F 0 "J2" H 4930 4392 50  0000 L CNN
F 1 "MRC522" H 4930 4301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4850 4400 50  0001 C CNN
F 3 "~" H 4850 4400 50  0001 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
Text GLabel 4050 4400 0    50   Input ~ 0
MISO
Text GLabel 4350 2800 2    50   Input ~ 0
MISO
Text GLabel 4350 2900 2    50   Input ~ 0
MOSI
Text GLabel 4050 4300 0    50   Input ~ 0
MOSI
Text GLabel 4050 4600 0    50   Input ~ 0
GND
Text GLabel 3950 3400 2    50   Input ~ 0
GND
Text GLabel 4050 4800 0    50   Input ~ 0
3V3
Text GLabel 4350 2700 2    50   Input ~ 0
SCK
Text GLabel 4050 4200 0    50   Input ~ 0
SCK
Text GLabel 4050 4100 0    50   Input ~ 0
SS
Text GLabel 4350 2600 2    50   Input ~ 0
STATUS_NET
Wire Wire Line
	1500 2100 1400 2100
Wire Wire Line
	1900 2100 1850 2100
Wire Wire Line
	2400 2100 2300 2100
Wire Wire Line
	1850 2100 1850 2250
Connection ~ 1850 2100
Wire Wire Line
	1850 2100 1800 2100
Wire Wire Line
	1250 5500 1150 5500
$Comp
L Device:R R5
U 1 1 600954A4
P 4350 4100
F 0 "R5" V 4353 4096 50  0000 C CNN
F 1 "R100" V 4466 4100 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 4100 50  0001 C CNN
F 3 "~" H 4350 4100 50  0001 C CNN
	1    4350 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 6009B066
P 4350 4200
F 0 "R6" V 4353 4196 50  0000 C CNN
F 1 "R100" V 4466 4200 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 4200 50  0001 C CNN
F 3 "~" H 4350 4200 50  0001 C CNN
	1    4350 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 6009B537
P 4350 4300
F 0 "R7" V 4353 4296 50  0000 C CNN
F 1 "R100" V 4466 4300 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 4300 50  0001 C CNN
F 3 "~" H 4350 4300 50  0001 C CNN
	1    4350 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 6009B9F3
P 4350 4400
F 0 "R8" V 4353 4396 50  0000 C CNN
F 1 "R100" V 4466 4400 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 4400 50  0001 C CNN
F 3 "~" H 4350 4400 50  0001 C CNN
	1    4350 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 6009BE5B
P 4350 4700
F 0 "R9" V 4353 4696 50  0000 C CNN
F 1 "R100" V 4466 4700 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 4700 50  0001 C CNN
F 3 "~" H 4350 4700 50  0001 C CNN
	1    4350 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 4100 4200 4100
Wire Wire Line
	4500 4100 4650 4100
Wire Wire Line
	4500 4200 4650 4200
Wire Wire Line
	4500 4300 4650 4300
Wire Wire Line
	4500 4400 4650 4400
Wire Wire Line
	4200 4400 4050 4400
Wire Wire Line
	4050 4300 4200 4300
Wire Wire Line
	4050 4200 4200 4200
Wire Wire Line
	4050 4700 4200 4700
Wire Wire Line
	4500 4700 4650 4700
Wire Wire Line
	4650 4600 4050 4600
Wire Wire Line
	4050 4800 4650 4800
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 5F3D9F6A
P 3950 2600
F 0 "U1" H 3950 1711 50  0000 C CNN
F 1 "WeMos_D1_mini" H 3950 1620 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 3950 1450 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2100 1450 50  0001 C CNN
	1    3950 2600
	1    0    0    -1  
$EndComp
Text GLabel 4050 1800 2    50   Input ~ 0
3V3
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 61E751C4
P 1300 6000
F 0 "Q1" H 1490 6046 50  0000 L CNN
F 1 "PN2222A" H 1490 5955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1500 5925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1300 6000 50  0001 L CNN
	1    1300 6000
	1    0    0    -1  
$EndComp
Text GLabel 1400 5350 1    50   Input ~ 0
5V
Text GLabel 1100 6000 0    50   Input ~ 0
POWER_NET
$Comp
L Device:R R10
U 1 1 61E86BF4
P 2700 6350
F 0 "R10" V 2907 6350 50  0000 C CNN
F 1 "R?" V 2816 6350 50  0000 C CNN
F 2 "Resistor_THT:R_Bare_Metal_Element_L12.4mm_W4.8mm_P11.40mm" V 2630 6350 50  0001 C CNN
F 3 "~" H 2700 6350 50  0001 C CNN
	1    2700 6350
	1    0    0    -1  
$EndComp
Text GLabel 2700 6500 3    50   Input ~ 0
GND
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 61E86BFC
P 2600 6000
F 0 "Q2" H 2790 6046 50  0000 L CNN
F 1 "PN2222A" H 2790 5955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2800 5925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 2600 6000 50  0001 L CNN
	1    2600 6000
	1    0    0    -1  
$EndComp
Text GLabel 2700 5350 1    50   Input ~ 0
5V
Text GLabel 2400 6000 0    50   Input ~ 0
POWER_NET
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 61E88185
P 2500 5600
F 0 "J1" V 2372 5680 50  0000 L CNN
F 1 "Relay" V 2463 5680 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2500 5600 50  0001 C CNN
F 3 "~" H 2500 5600 50  0001 C CNN
	1    2500 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 5500 2700 5350
Wire Wire Line
	2700 5600 2700 5800
Wire Wire Line
	1400 5650 1400 5800
$Comp
L Device:LED D2
U 1 1 61E9BA62
P 1400 3750
F 0 "D2" H 1393 3967 50  0000 C CNN
F 1 "POWER LED" H 1393 3876 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1400 3750 50  0001 C CNN
F 3 "~" H 1400 3750 50  0001 C CNN
	1    1400 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61E9BA68
P 1400 4600
F 0 "R3" V 1607 4600 50  0000 C CNN
F 1 "R330" V 1516 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 4600 50  0001 C CNN
F 3 "~" H 1400 4600 50  0001 C CNN
	1    1400 4600
	1    0    0    -1  
$EndComp
Text GLabel 1400 4750 3    50   Input ~ 0
GND
Wire Wire Line
	1250 3750 1150 3750
$Comp
L Transistor_BJT:PN2222A Q3
U 1 1 61E9BA70
P 1300 4250
F 0 "Q3" H 1490 4296 50  0000 L CNN
F 1 "PN2222A" H 1490 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1500 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 1300 4250 50  0001 L CNN
	1    1300 4250
	1    0    0    -1  
$EndComp
Text GLabel 1400 3600 1    50   Input ~ 0
5V
$Comp
L Device:R R11
U 1 1 61E9BA78
P 2700 4600
F 0 "R11" V 2907 4600 50  0000 C CNN
F 1 "R?" V 2816 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Bare_Metal_Element_L12.4mm_W4.8mm_P11.40mm" V 2630 4600 50  0001 C CNN
F 3 "~" H 2700 4600 50  0001 C CNN
	1    2700 4600
	1    0    0    -1  
$EndComp
Text GLabel 2700 4750 3    50   Input ~ 0
GND
$Comp
L Transistor_BJT:PN2222A Q4
U 1 1 61E9BA7F
P 2600 4250
F 0 "Q4" H 2790 4296 50  0000 L CNN
F 1 "PN2222A" H 2790 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2800 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 2600 4250 50  0001 L CNN
	1    2600 4250
	1    0    0    -1  
$EndComp
Text GLabel 2700 3600 1    50   Input ~ 0
5V
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 61E9BA87
P 2500 3850
F 0 "J3" V 2372 3930 50  0000 L CNN
F 1 "Relay" V 2463 3930 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2500 3850 50  0001 C CNN
F 3 "~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 3750 2700 3600
Wire Wire Line
	2700 3850 2700 4050
Wire Wire Line
	1400 3900 1400 4050
Text GLabel 2400 4250 0    50   Input ~ 0
ERROR_NET
$Comp
L Device:LED D4
U 1 1 62026746
P 4250 5500
F 0 "D4" H 4243 5717 50  0000 C CNN
F 1 "POWER LED" H 4243 5626 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 4250 5500 50  0001 C CNN
F 3 "~" H 4250 5500 50  0001 C CNN
	1    4250 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 6202674C
P 4250 6350
F 0 "R12" V 4457 6350 50  0000 C CNN
F 1 "R330" V 4366 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4180 6350 50  0001 C CNN
F 3 "~" H 4250 6350 50  0001 C CNN
	1    4250 6350
	1    0    0    -1  
$EndComp
Text GLabel 4250 6500 3    50   Input ~ 0
GND
Wire Wire Line
	4100 5500 4000 5500
$Comp
L Transistor_BJT:PN2222A Q5
U 1 1 62026754
P 4150 6000
F 0 "Q5" H 4340 6046 50  0000 L CNN
F 1 "PN2222A" H 4340 5955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4350 5925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 4150 6000 50  0001 L CNN
	1    4150 6000
	1    0    0    -1  
$EndComp
Text GLabel 4250 5350 1    50   Input ~ 0
5V
Text GLabel 3950 6000 0    50   Input ~ 0
STATUS_NET
Wire Wire Line
	4250 5650 4250 5800
$Comp
L Device:R R2
U 1 1 6202ADFF
P 1700 3100
F 0 "R2" V 1907 3100 50  0000 C CNN
F 1 "R330" V 1816 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1630 3100 50  0001 C CNN
F 3 "~" H 1700 3100 50  0001 C CNN
	1    1700 3100
	0    -1   -1   0   
$EndComp
Text GLabel 1450 3100 0    50   Input ~ 0
GND
Wire Wire Line
	1550 3100 1450 3100
Text GLabel 2150 3100 2    50   Input ~ 0
5V
$Comp
L Device:LED D1
U 1 1 6202F7AF
P 2000 3100
F 0 "D1" H 1993 3317 50  0000 C CNN
F 1 "ONLINE LED" H 1993 3226 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2000 3100 50  0001 C CNN
F 3 "~" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
Text GLabel 3850 1800 0    50   Input ~ 0
5V
Text GLabel 5500 6100 0    50   Input ~ 0
GND
Text GLabel 5600 6100 2    50   Input ~ 0
5V
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 6207987B
P 5500 5900
F 0 "J4" V 5372 5980 50  0000 L CNN
F 1 "Vin" V 5591 5980 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 5500 5900 50  0001 C CNN
F 3 "~" H 5500 5900 50  0001 C CNN
	1    5500 5900
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
