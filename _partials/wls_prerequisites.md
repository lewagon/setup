## Prerequisites

First you need to check your machine runs on Windows 10 build 1615 or later. Follow theses steps to [check your build](https://docs.microsoft.com/en-us/windows/wsl/troubleshooting#check-your-build-number). For earlier versions of Windows 10, follow [Le Wagon Windows setup](WINDOWS.md).

### Ubuntu on Windows

Download [Ubuntu on Windows](https://www.microsoft.com/fr-fr/store/p/ubuntu/9nblggh4msv6?rtc=1) from the Windows Store. Once download has completed, select _Launch_. This will open a console window. Wait for installation to complete then you will be prompted to create your LINUX user account. Create your LINUX username and password. This user account has no relationship to your Windows username and password and hence can be different.

You're now ready to use your Linux environment 👏.

To open a terminal, press `Windows key`, then type `Ubuntu` (it might show up earlier, though), then `Enter`

You will have to copy-paste a lot of commands in this guide. While copying to the clipboard works as everywhere else by selecting the text, and pressing `Ctrl` + `C`, pasting into the terminal is done by right-clicking anywhere within the terminal window.

Start with this command that installs a few useful utilities that will be needed later:
```bash
sudo apt-get update
sudo apt install -y apt-transport-https unzip gnome-terminal
```

:point_up: This command will ask for your password with: `[sudo] password for <username>:`. The Linux terminal will not give you any feedback, like `\*`, as you might be used to. So you just have to type it, and then press `Enter`. But don't be scared! If you type it wrong, you will be asked again. And if you typed in correctly once, the terminal will remember it until it is closed.

### Menlo for Powerline font

Menlo for Powerline is a fancy font for your terminal. Download it from [abertsch/Menlo-for-Powerline repository](https://github.com/abertsch/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf) on GitHub. Once download has completed, double-click on the `Menlo for Powerline.ttf` file and install it on windows.

Then open a terminal and right-click on the Ubuntu logo then choose `>Settings>Fonts>Menlo for Powerline` and save.

### Xming X Server for Windows

You need a X server to run your text editor through your Linux console in the context of your working directory.
Go to https://sourceforge.net/projects/xming/ and download Xming. Once download has completed, just launch it. You will see a Xming icon in the taskbar.

You need to prepend commands that start applications in a graphical interface outside the command line with `DISPLAY=:0 `, e.g. `DISPLAY=:0 subl`, or set this variable by adding it to `~/.bashrc`, i.e.
```bash
echo "export DISPLAY=:0" >> ~/.bashrc
echo "export DISPLAY=:0" >> ~/.zshrc
```

Xming does not autostart by default. To autostart it when you log into Windows, press `Windows key` + `R`, type `shell:startup`, and press `Enter`. Now drag an Xming icon (e.g. from your Desktop) into the window that just opened.
