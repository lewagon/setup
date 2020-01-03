First you need to install Ubuntu on your computer, as a dual boot.

## Backup your data

It's **very** important that all your data are backed-up before going further. Normally, things go well, but as we'll handle partitions on the hard drive, we might have difficulties. Better safe than sorry.

## Shrink Volume to prepare some space for Linux

We will take off 30GB from your hard drive to give it to Linux. You need to access [Disk Management](http://pcsupport.about.com/od/windows-8/a/disk-management-windows-8.htm). Then, right click on the **biggest** partition and select **Shrink Volume**. You want to get `30000` MB of space. If your disk is small, you can reduce this value, but try to set it to `20000` at the bare minimum.

For this step, there is a [full tutorial](https://www.easeus.com/partition-master/shrink-windows-10-partition.html) you can follow.

## Turn off Fast Startup

If you are running Windows 8+, you need to disable Fast Startup:

1. Right click -> Download this: [turn_off_fast_startup.bat](https://raw.githubusercontent.com/lewagon/setup/master/utils/turn_off_fast_startup.bat).
1. Right click on the downloaded file and click **Run as administrator**

**OR**

Go to **Energy Settings** -> **Power Button**. Click on "Change settings that are currently unavailable** if needed then you should be able to **disable FastBoot** or untick the **Turn on fast startup (recommended)** option (depends on the Windows version).

## USB stick

**One of the teacher or TA** should give you a bootable USB stick with [**Ubuntu**](https://www.ubuntu.com/download/desktop). If not, you can create one yourself with [Etcher](https://etcher.io/).

## Install Ubuntu

1. Plug-in the USB stick, and restart your computer **holding the shift key**. A blue screen wil appear. If this does not work, follow [this procedure](https://support.microsoft.com/en-us/instantanswers/f40a95aa-1e34-4907-98ba-a308fd10a786/get-to-safe-mode-and-other-startup-settings-in-windows-10) to get to the "Other startup" setting.
1. Once the computer has restarted, you need to select the startup mode. Choose **Other options**
1. Choose **Use a Device**. You should see the USB stick in the list (EFI USB Device). Select it, this way, Windows will restart using the Linux key.

Ubuntu should boot in live mode. Time to install it!

1. Install Ubuntu in **english** and alongside with Windows. **Do not** tick **Third-Party** and **do not** tick **Update ...**.
1. **Keyboard** settings: press <kbd>@</kbd> <kbd>#</kbd> <kbd>/</kbd> to check they are working correctly.
1. Fill in **User Information**.
1. Restart your machine and unplug the USB stick.

When it's done, **check you can still boot on Windows**. The idea is that every time you boot your computer, you now have a menu to choose if you want to boot Windows **or** Linux.

Once again, restart the computer, boot on ubuntu, and follow [the UBUNTU setup guide](UBUNTU.md) to install Ruby & all the software we need!
