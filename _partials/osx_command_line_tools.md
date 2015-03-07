## Command Line Tools

Open the terminal

![](images/open-terminal.png)

Type what is after the dollar sign `$`. The dollar sign means that you need to type what's after into the terminal.

```bash
$ xcode-select --install
```

If you have get following message, you can just skip this step and go to Sublime Text install.

```
# command line tools are already installed, use "Software Update" to install updates
```

Otherwise, it will open a window asking you if you want to install some software. Accept and wait. If it fails, try again the command line above, sometimes the Apple server are overloaded.

![](images/xcode-select-install.png)

While it's downloading, you can go on with the Sublime Text configuration (next session), but **stop** before Homebrew. You'll need the command line tools installed for that step.