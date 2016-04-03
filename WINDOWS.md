First you need to install Ubuntu on your computer, as a dual boot.

## USB stick

The teacher should give you a bootable USB stick with **Ubuntu 14.04. LTS 64 bits**. If not, you can create one yourself from [OSX](http://www.ubuntu.com/download/desktop/create-a-usb-stick-on-mac-osx) or from [Windows](http://www.ubuntu.com/download/desktop/create-a-usb-stick-on-windows).

## Backup your data

It's **very** important that all your data are backed-up before going further. Normally, things go well, but as we'll handle partitions on the hard drive, we might have difficulties. Better safe than sorry.

## Create an empty partition for Linux

We will take off 40GB from your hard drive to give it to Linux. You need to access [Disk Management](http://pcsupport.about.com/od/windows-8/a/disk-management-windows-8.htm). Then, right click on the biggest partition and select **Shrink Volume**.

## Turn off Fast Startup

If you are running Windows 8+, you need to disable Fast Startup :

1. Right click -> Download this: [turn_off_fast_startup.bat](https://raw.githubusercontent.com/lewagon/setup/master/utils/turn_off_fast_startup.bat).
1. Right click on the downloaded file and click **Run as administrator**

## Install Ubuntu

Plug-in the USB stick, and restart your computer. If it does not boot on Linux, you need to ask a teacher to help you with accessing the BIOS and changing the boot order so that it reads from the usb stick first before the hard drive.

When it's done, check you can still boot on Windows.

Then restart the computer, boot on ubuntu, and follow [this guide](UBUNTU.md)
