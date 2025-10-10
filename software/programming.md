---
layout: default
title: Programming the Board
parent: Software
nav_order: 2
---

# Programming the Board

The board can be fully programmed over USB via the i.MX8M mini serial download mode, without any additional tools. The recommended way to upload the system images in serial download mode is with the NXP [mfgtools 3.0 Universal Update Utility](https://github.com/NXPmicro/mfgtools). This guide will focus on Linux, but these steps should be possible on MacOS or Windows as well.

## Connect the Board

Hold down BTN0 to force serial download mode, and plug in a USB cable connected to the host. You should see the board listed in `lsusb` if it is in serial download mode:

```
kurt@meatwad:~$ lsusb -d 1fc9:
Bus 001 Device 023: ID 1fc9:0134 NXP Semiconductors 
```

## Program the Bootloader to eMMC

The eMMC can be programmed via uuu. Connect a serial cable to the `CONSOLE` connector, and then load the bootloader to eMMC:

```
kurt@meatwad:~/kimchi-yocto-demo/build-kimchi/tmp/deploy/images/kimchi$ uuu -b emmc imx-boot
uuu (Universal Update Utility) for nxp imx chips -- libuuu_1.3.167-0-g1d5078f

Success 1    Failure 0                                                         
                                                                               
                                                                               
1:14     7/ 7 [Done                                  ] FB: Done                
```

You should see the bootloader start in the serial console:

```
U-Boot SPL 2019.04-lf-5.4.y_v2019.04+g228843cdf5 (Feb 22 2020 - 12:25:23 +0000)
power_bd71837_init
DDRINFO: start DRAM init
DDRINFO:ddrphy calibration done
DDRINFO: ddrmix config done
Normal Boot
Trying to boot from USB SDP
SDP: initialize...
SDP: handle requests...
Downloading file of size 1193200 to 0x40400000... done
Jumping to header at 0x40400000
Header Tag is not an IMX image
Found header at 0x40429ba0


U-Boot 2019.04-lf-5.4.y_v2019.04+g228843cdf5 (Feb 22 2020 - 12:25:23 +0000)

CPU:   Freescale i.MX8MMQ rev1.0 1600 MHz (running at 1200 MHz)
CPU:   Industrial temperature grade (-40C to 105C) at 49C
Reset cause: POR
Model: GroupGets i.MX8MM kimchi micro
DRAM:  2 GiB
setup_pd_switch starting in dead battery condition
setup_pd_switch not exiting dead battery mode
TCPC:  Vendor ID [0x1fc9], Product ID [0x5110], Addr [I2C2 0x50]
SNK.Default on CC1
tcpc_pd_receive_message: Polling ALERT register, TCPC_ALERT_RX_STATUS bit failed, ret = -62
Power supply on USB1
MMC:   FSL_SDHC: 0, FSL_SDHC: 1
Loading Environment from MMC... *** Warning - bad CRC, using default environment

In:    serial
Out:   serial
Err:   serial

 BuildInfo:
  - ATF 7b3389d
  - U-Boot 2019.04-lf-5.4.y_v2019.04+g228843cdf5

switch to partitions #0, OK
mmc0(part 0) is current device
Detect USB boot. Will enter fastboot mode!
Net:   FEC [PRIME]
Error: FEC address not set.

Fastboot: Normal
Boot from USB for mfgtools
*** Warning - Use default environment for                                mfgtools
, using default environment

Run bootcmd_mfg: run mfgtool_args;if iminfo ${initrd_addr}; then if test ${tee} = yes; then bootm ${tee_addr} ${initrd_addr;
Hit any key to stop autoboot:  0 

## Checking Image at 43800000 ...
Unknown image format!
Run fastboot ...
```

## First time: program fuses to boot from eMMC

The fuses should be programmed so the i.MX8 
ROM will load the SPL (first stage bootloader) from on-board eMMC when it starts, rather than entering serial download mode automatically. This can be done from u-boot via the serial console, and only needs to be done once.

Once the bootloader is running, you can press `Ctrl-C` to exit fastboot mode, and you will get a u-boot prompt. Run the following commands to program the fuses:

```
u-boot=> fuse prog 1 3 0x18002022 
Programming bank 1 word 0x00000003 to 0x18002022...
Warning: Programming fuses is an irreversible operation!
         This may brick your system.
         Use this command only if you are sure of what you are doing!

Really perform this fuse programming? <y/N>
y
```

The higher 16-bits of fuse settings add bit 28, to enable boot from fuses.

The lower 16-bits will be programmed as follows:

```
0x470[15:0] =
    reserved [15] = 0
    boot device emmc [14:12] = 010
    port select (sd1) [11:10] = 0
    power cycle enable [9] = 0
    SD Loopback Clock Source SEL sdr50/sdr104 [8] = 0
    Regular boot [7] = 0
                                            0 - Regular
                                            1 - Fast Boot
    Bus Width [6:4] = 010
                                            8-bit
    Speed normal [3:2] = 00
                                            00 - Normal
                                            01 - High
    Normal mode voltage 1.8V [1] = 1
                                        USDHC1 IO VOLTAGE SELECTION (only for MMC/eMMC boot)
                                            0 - 3.3 V
                                            1 - 1.8 V
    Mfr mode voltage 3.3V [0] = 0
                                        USDHC2 IO VOLTAGE SELECTION (only for MMC/eMMC boot)
                                            0 - 3.3 V
                                            1 - 1.8 V
```

Note that there are a few unburned fuses that might enable enhanced features such as eMMC "fastboot" support, but in development [some problems were encountered enabling these features](https://community.nxp.com/thread/522197) so please take note and only do so at your own risk.

![fusing table](/images/hardware/fusing.jpg)



## Program rootfs to eMMC

If you are in the bootloader, you can switch back to fastboot mode:

```
u-boot=> fastboot usb 0
```

Or simply reboot the board with `BTN0` held.

Then you can program the whole rootfs (substitute the wic image name if you build an image other than `core-image-base`):

```
kurt@meatwad:~/kimchi-yocto-demo/build-kimchi/tmp/deploy/images/kimchi$ uuu -b emmc_all imx-boot core-image-base-kimchi.wic
uuu (Universal Update Utility) for nxp imx chips -- libuuu_1.3.167-0-g1d5078f

Success 1    Failure 0                                                         
                                                                               
                                                                               
1:14     8/ 8 [Done                                  ] FB: done                
```
