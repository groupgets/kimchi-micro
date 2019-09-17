EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4350 3700 0    50   ~ 0
CAM_CK_N
Text Label 4350 3800 0    50   ~ 0
CAM_CK_P
Text Label 4350 3950 0    50   ~ 0
CAM_D0_N
Text Label 4350 4050 0    50   ~ 0
CAM_D0_P
Text Label 4350 4200 0    50   ~ 0
CAM_D1_N
Text Label 4350 4300 0    50   ~ 0
CAM_D1_P
Text Label 4350 4450 0    50   ~ 0
CAM_IO0
Text Label 4350 4550 0    50   ~ 0
CAM_IO1
$Comp
L power:GND #PWR0245
U 1 1 5D5D8BBA
P 5200 4850
F 0 "#PWR0245" H 5200 4600 50  0001 C CNN
F 1 "GND" H 5205 4677 50  0000 C CNN
F 2 "" H 5200 4850 50  0001 C CNN
F 3 "" H 5200 4850 50  0001 C CNN
	1    5200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4850 5200 4800
Wire Wire Line
	5200 4550 4350 4550
Wire Wire Line
	5200 3700 4350 3700
Connection ~ 5200 4550
Wire Wire Line
	4350 3800 5200 3800
Connection ~ 5200 3800
Wire Wire Line
	5200 3800 5200 3700
Wire Wire Line
	4350 3950 5200 3950
Connection ~ 5200 3950
Wire Wire Line
	5200 3950 5200 3800
Wire Wire Line
	4350 4050 5200 4050
Connection ~ 5200 4050
Wire Wire Line
	5200 4050 5200 3950
Wire Wire Line
	4350 4200 5200 4200
Connection ~ 5200 4200
Wire Wire Line
	5200 4200 5200 4050
Wire Wire Line
	4350 4300 5200 4300
Connection ~ 5200 4300
Wire Wire Line
	5200 4300 5200 4200
Wire Wire Line
	4350 4450 5200 4450
Wire Wire Line
	5200 4300 5200 4450
Connection ~ 5200 4450
Wire Wire Line
	5200 4450 5200 4550
$Comp
L mxenc:MIMX8MM6DVTLZAA U1
U 5 1 5DFAB501
P 3750 6200
F 0 "U1" H 3783 9065 50  0000 C CNN
F 1 "MIMX8MM6DVTLZAA" H 3783 8974 50  0000 C CNN
F 2 "mxenc:BGA-729_27x27_14.0x14.0mm" H 4000 8950 50  0001 C CNN
F 3 "" H 3000 8950 50  0001 C CNN
	5    3750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4700 5200 4700
Connection ~ 5200 4700
Wire Wire Line
	5200 4700 5200 4550
Wire Wire Line
	5200 4700 5200 4800
Connection ~ 5200 4800
Wire Wire Line
	4350 4800 5200 4800
Text Notes 2850 5550 0    50   ~ 0
i.MX8MM HDG Unused signal strapping\nMIPI-CSI - MIPI_CSI_CLK_P/N, MIPI_CSI_Dx_P/N - Tie all signals to ground
$EndSCHEMATC
