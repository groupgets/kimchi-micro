---
layout: page
title: About
permalink: /about/
---

# kimχ micro

kimχ micro is a small and spicy open hardware embedded SBC that offers tons of
versitility for many different applications.

## Specifications

v0.9:

* SoC – NXP i.MX 8M Mini single to quad-core Cortex-A53 processor @ up to 1.8 GHz, Cortex-M4F real-time core @ up to 400 MHz, Vivante GC NanoUltra 3D GPU + GC320 2D GPU, VPU for 1080p60 video decoding and encoding; (Single and dual-core version of NXP i.MX 8M Mini processor are also compatible)
* System Memory – 2GB LPDDR4
* Storage – 8GB eMMC flash, MicroSD card socket, serial EEPROM
* USB – 1x USB 2.0 Type-C port for power and data
* Expansion
    * mPCIe socket for wireless cards (e.g. WIFi, 4G LTE, or LoRa).
    * Sparkfun Qwiic header
    * 2x 60-pin high-density I/O headers with Ethernet, USB, camera, display, SAI audio, I2C, SPI, GPIO, PCIe, etc…
* Debugging
    * 10-pin JTAG header footprint
    * UART headers (6-pin JST-SH): Cortex-A53 "Console" and Cortex-M4 "M4" 
* Misc – Power button, button 1 (boot selection) and button 2 (user button), R, G, and B LEDs
* Power Supply
    * USB PD via USB-C port, NX20P3483UKUSB PD and Type-C high-voltage sink/source combo switch and PTN5110NHQZ TCPC compliant USB Power Delivery (PD) PHY IC
    * 5V unpopulated header
    * 2-pin header for 1S LiPo Battery; on-board PMIC, charging, fuel gauge, and battery protection ICs
* Dimensions – 65 x 32 mm (FYR – Raspberry Pi Zero: 65 x 30 mm)

This list is [thanks to CNX Software](https://www.cnx-software.com/2020/06/08/raspberry-pi-zero-sized-kimχ-micro-sbc-quad-core-processor-mpcie-slot/), who dug into the board source to put this together!
