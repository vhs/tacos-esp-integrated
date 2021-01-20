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
Text GLabel 4050 1800 2    50   Input ~ 0
3V3
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
L Device:LED D1
U 1 1 5F287C44
P 2000 3050
F 0 "D1" H 1993 3267 50  0000 C CNN
F 1 "STATUS LED" H 1993 3176 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2000 3050 50  0001 C CNN
F 3 "~" H 2000 3050 50  0001 C CNN
	1    2000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F288087
P 2000 3650
F 0 "D2" H 1993 3867 50  0000 C CNN
F 1 "ERROR LED" H 1993 3776 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2000 3650 50  0001 C CNN
F 3 "~" H 2000 3650 50  0001 C CNN
	1    2000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F2889AC
P 2000 4650
F 0 "D3" H 1993 4867 50  0000 C CNN
F 1 "POWER LED" H 1993 4776 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2000 4650 50  0001 C CNN
F 3 "~" H 2000 4650 50  0001 C CNN
	1    2000 4650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5F2894AE
P 2050 2050
F 0 "SW1" H 2050 2285 50  0000 C CNN
F 1 "SW_ARM" H 2050 2194 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2050 2050 50  0001 C CNN
F 3 "~" H 2050 2050 50  0001 C CNN
	1    2050 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F28A588
P 1600 3050
F 0 "R2" V 1807 3050 50  0000 C CNN
F 1 "R330" V 1716 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 3050 50  0001 C CNN
F 3 "~" H 1600 3050 50  0001 C CNN
	1    1600 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F28A95D
P 1600 3650
F 0 "R3" V 1807 3650 50  0000 C CNN
F 1 "R330" V 1716 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 3650 50  0001 C CNN
F 3 "~" H 1600 3650 50  0001 C CNN
	1    1600 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F28AE51
P 1600 4650
F 0 "R4" V 1807 4650 50  0000 C CNN
F 1 "R330" V 1716 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 4650 50  0001 C CNN
F 3 "~" H 1600 4650 50  0001 C CNN
	1    1600 4650
	0    -1   -1   0   
$EndComp
Text GLabel 1350 3050 0    50   Input ~ 0
GND
Text GLabel 1350 3650 0    50   Input ~ 0
GND
Text GLabel 2250 3650 2    50   Input ~ 0
ERROR_NET
Text GLabel 2250 4650 2    50   Input ~ 0
POWER_NET
Text GLabel 1350 4650 0    50   Input ~ 0
GND
Wire Wire Line
	2150 4650 2200 4650
Text GLabel 2350 2050 2    50   Input ~ 0
3V3
$Comp
L Device:R R1
U 1 1 5F2A5D4B
P 1600 2050
F 0 "R1" V 1807 2050 50  0000 C CNN
F 1 "R330" V 1716 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 2050 50  0001 C CNN
F 3 "~" H 1600 2050 50  0001 C CNN
	1    1600 2050
	0    -1   -1   0   
$EndComp
Text GLabel 1350 2050 0    50   Input ~ 0
GND
Text GLabel 1800 2200 3    50   Input ~ 0
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
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5F2B9C76
P 1850 5100
F 0 "J3" V 1722 5180 50  0000 L CNN
F 1 "Relay" V 1813 5180 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1850 5100 50  0001 C CNN
F 3 "~" H 1850 5100 50  0001 C CNN
	1    1850 5100
	0    1    1    0   
$EndComp
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
Text GLabel 4350 2600 2    50   Input ~ 0
STATUS_NET
Text GLabel 2250 3050 2    50   Input ~ 0
STATUS_NET
Wire Wire Line
	1450 3650 1400 3650
Wire Wire Line
	2150 3650 2200 3650
Wire Wire Line
	1850 3650 1750 3650
$Comp
L Connector:Screw_Terminal_01x02 BZ1
U 1 1 5F2C3AA2
P 1750 4050
F 0 "BZ1" V 1622 3862 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 1713 3862 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1750 4050 50  0001 C CNN
F 3 "~" H 1750 4050 50  0001 C CNN
	1    1750 4050
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 3850 2200 3850
Wire Wire Line
	2200 3850 2200 3650
Connection ~ 2200 3650
Wire Wire Line
	2200 3650 2250 3650
Wire Wire Line
	1750 3850 1400 3850
Wire Wire Line
	1400 3850 1400 3650
Connection ~ 1400 3650
Wire Wire Line
	1400 3650 1350 3650
Wire Wire Line
	1350 3050 1450 3050
Wire Wire Line
	1750 3050 1850 3050
Wire Wire Line
	2150 3050 2250 3050
Wire Wire Line
	1450 2050 1350 2050
Wire Wire Line
	1850 2050 1800 2050
Wire Wire Line
	2350 2050 2250 2050
Wire Wire Line
	1800 2050 1800 2200
Connection ~ 1800 2050
Wire Wire Line
	1800 2050 1750 2050
Wire Wire Line
	1350 4650 1400 4650
Wire Wire Line
	1850 4650 1750 4650
Wire Wire Line
	1750 4900 1400 4900
Wire Wire Line
	1400 4900 1400 4650
Connection ~ 1400 4650
Wire Wire Line
	1400 4650 1450 4650
Wire Wire Line
	1850 4900 2200 4900
Wire Wire Line
	2200 4900 2200 4650
Connection ~ 2200 4650
Wire Wire Line
	2200 4650 2250 4650
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
$EndSCHEMATC
