
## Checking your computer for Apple Silicon (Apple M1 chips)

If you bought your computer after late 2020, chances are your Apple laptop uses Apple silicon instead of Intel processors. Let's find out...

Open a new Terminal window from Applications > Utilities or search with [Spotlight](https://support.apple.com/en-gb/HT204014):

![](images/open-terminal.png)

Copy-paste the following command in the terminal and hit `Enter` to execute the command.

``` bash
if [[ `uname -m` == 'arm64' ]]; then
  echo "Your computer uses Apple Silicon 🌟"
else
  echo "Your computer has an Intel processor 🤖"
fi
```

☝️ The result of the command should indicate whether your computer uses Apple Silicon.

If your computer uses Apple Silicon, proceed with the next section. Otherwise, you can skip to the section below.

## Setup for Apple Silicon

### Uninstall Homebrew

We need to uninstall Homebrew in case a native version was installed.

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

If brew was not installed you will get the message `brew: command not found!`

### Configure Terminal for Rosetta

Open the Finder app (or search for it with [Spotlight](https://support.apple.com/en-gb/HT204014)).

Go to Applications > Utilities.

Duplicate the Terminal app (select it, then Cmd + C, Cmd + V), and rename a copy as Terminal Rosetta.

Press Cmd + I on the Terminal Rosetta app, then check the box "Run under Rosetta".

⚠️ From now on during the bootcamp, whenever you are asked to open a Terminal, you will use the **Terminal Rosetta** app.

Launch the Terminal app. You will be prompted to install Rosetta. Click Install.
