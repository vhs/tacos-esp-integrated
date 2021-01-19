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
P 1900 3050
F 0 "D1" H 1893 3267 50  0000 C CNN
F 1 "STATUS LED" H 1893 3176 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1900 3050 50  0001 C CNN
F 3 "~" H 1900 3050 50  0001 C CNN
	1    1900 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F288087
P 1900 3650
F 0 "D2" H 1893 3867 50  0000 C CNN
F 1 "ERROR LED" H 1893 3776 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1900 3650 50  0001 C CNN
F 3 "~" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F2889AC
P 1900 4650
F 0 "D3" H 1893 4867 50  0000 C CNN
F 1 "POWER LED" H 1893 4776 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1900 4650 50  0001 C CNN
F 3 "~" H 1900 4650 50  0001 C CNN
	1    1900 4650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5F2894AE
P 2100 2050
F 0 "SW1" H 2100 2285 50  0000 C CNN
F 1 "SW_ARM" H 2100 2194 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2100 2050 50  0001 C CNN
F 3 "~" H 2100 2050 50  0001 C CNN
	1    2100 2050
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
Text GLabel 1450 3050 0    50   Input ~ 0
GND
Text GLabel 1450 3650 0    50   Input ~ 0
GND
Text GLabel 2050 3050 2    50   Input ~ 0
POWER_NET
Text GLabel 2050 3650 2    50   Input ~ 0
ERROR_NET
Text GLabel 2250 4650 2    50   Input ~ 0
POWER_NET
Text GLabel 1450 4650 0    50   Input ~ 0
GND
Wire Wire Line
	1750 3900 1750 3650
Connection ~ 1750 3650
Wire Wire Line
	2050 3900 2050 3650
Wire Wire Line
	2150 4650 2250 4650
Text GLabel 2300 2050 2    50   Input ~ 0
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
Wire Wire Line
	1750 2050 1900 2050
Text GLabel 1450 2050 0    50   Input ~ 0
GND
Text GLabel 1900 2300 3    50   Input ~ 0
SWITCH
Wire Wire Line
	1900 2300 1900 2050
Connection ~ 1900 2050
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5F285F64
P 4250 4400
F 0 "J2" H 4330 4392 50  0000 L CNN
F 1 "MRC522" H 4330 4301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4250 4400 50  0001 C CNN
F 3 "~" H 4250 4400 50  0001 C CNN
	1    4250 4400
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
P 2150 4850
F 0 "J3" V 2022 4930 50  0000 L CNN
F 1 "Relay" V 2113 4930 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2150 4850 50  0001 C CNN
F 3 "~" H 2150 4850 50  0001 C CNN
	1    2150 4850
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 BZ1
U 1 1 5F2C3AA2
P 1850 4100
F 0 "BZ1" V 1722 3912 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 1813 3912 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1850 4100 50  0001 C CNN
F 3 "~" H 1850 4100 50  0001 C CNN
	1    1850 4100
	0    -1   1    0   
$EndComp
Wire Wire Line
	1950 3900 2050 3900
Wire Wire Line
	1750 3900 1850 3900
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
$EndSCHEMATC
