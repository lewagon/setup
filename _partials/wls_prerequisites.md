## Prerequisites

First you need to check your machine runs on Windows 10 build 1615 or later. Follow theses steps to [check your build](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting#check-your-build-number). For earlier versions of Windows 10, follow [Le Wagon Windows setup](WINDOWS.md).

### Ubuntu on Windows

Download [Ubuntu on Windows](https://www.microsoft.com/fr-fr/store/p/ubuntu/9nblggh4msv6?rtc=1) from the Windows Store. Once download has completed, select _Launch_. This will open a console window. Wait for installation to complete then you will be prompted to create your LINUX user account. Create your LINUX username and password. This user account has no relationship to your Windows username and password and hence can be different.

You're now ready to use your Linux environment 👏.

:bulb: to quickly open a terminal, press `Windows key` then `U` then `Enter`

### Menlo fo Powerline font

Menlo for Powerline is a fancy font for your terminal. Download it from [abertsch/Menlo-for-Powerline repository](https://github.com/abertsch/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf) on GitHub. Once download has completed, double-click on the `Menlo for Powerline.ttf` file and install it on windows.

Then open a terminal and right-click on the Ubuntu logo then choose `>Settings>Fonts>Menlo for Powerline` and save.

### Unzip

Unzip is an unarchiver tool, you will need it in the next weeks.

Open a terminal and copy this line with `Ctrl` + `C`:

```bash
sudo apt-get install unzip
```

:bulb: To **paste it in the terminal**, you need to use `Right-click`.

### Xming X Server for Windows

You need a X server to run your text editor through your Linux console in the context of your working directory.
Go to https://sourceforge.net/projects/xming/ and download Xming. Once download has completed, just launch it. You will see a Xming icon in the taskbar.

