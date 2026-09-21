## Homebrew

[Homebrew](http://brew.sh/) is a package manager: it's a software used to install other software from the command line. Let's install it!

Open a terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This will ask for your confirmation (hit `Enter`) and your **macOS user account password** (the one you use to [log in](https://support.apple.com/en-gb/HT202860) when you reboot your Macbook).

:warning: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

If you already have Homebrew, it will tell you so, that's fine, go on.

Once Homebrew has finished installing, run these two commands to add it to your `PATH`:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Make sure you're on the latest version:

```bash
brew update
```

Then install some useful software (you can copy / paste all the lines at once):

```bash
brew upgrade git         || brew install -y git
brew upgrade gh          || brew install -y gh
brew upgrade wget        || brew install -y wget
brew upgrade imagemagick || brew install -y imagemagick
brew upgrade jq          || brew install -y jq
brew upgrade openssl     || brew install -y openssl
brew upgrade tree        || brew install -y tree
brew upgrade direnv      || brew install -y direnv
```
