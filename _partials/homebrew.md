## Homebrew

On Mac, you need to install [Homebrew](http://brew.sh/) which is a Package Manager.
It will be used as soon as we need to install some software.
To do so, open your Terminal and run:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

This will ask for your confirmation (hit `Enter`) and your laptop session password.

If you already have Homebrew, it will tell you so, that's fine, go on.

Then install some useful software:

```bash
brew upgrade
brew install git wget imagemagick node jq
brew install openssl && brew link openssl --force
```
