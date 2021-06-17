## A note about quitting apps on a Mac

Clicking the little red cross in the top left corner of the application window on a Mac **does not really quit it**, it just closes an active window. To quit the application _for real_ either press `Cmd + Q` when the application is active, or navigate to `APP_NAME` -> `Quit` in the menu bar.

![Quit Terminal on macOS](images/macos_quit.png)

During this setup you will be asked to **quit and re-open** applications multiple times, please make sure you do it properly :pray:

## Command Line Tools

Open a new Terminal window from Applications > Utilities or searching with [Spotlight](https://support.apple.com/en-gb/HT204014).

Copy-paste the following command in the terminal and hit `Enter` to execute the command.

```bash
xcode-select --install
```

If you receive the following message, you can just skip this step and go to next step.

```
# command line tools are already installed, use "Software Update" to install updates
```

Otherwise, it will open a window asking you if you want to install some software. Accept and wait. If it fails, try again `xcode-select --install`, sometimes the Apple servers are overloaded.

![Install xcode-select on macOS](images/macos_xcode_select_install.png)

While it's downloading, you can go on with configuring your GitHub account, but **stop** before Homebrew. You'll need the command line tools installed for that step.

If you receive the following message, you need to update the software update catalog.

```
Xcode is not currently available from the Software Update server
```

In this case, copy-paste the following command in the terminal and hit Enter.

```bash
sudo softwareupdate --clear-catalog
```

Once this is done, you can try to install again (copy-paste the following command and hit enter).

```bash
xcode-select --install
```

Then follow the previous instructions for this command.
