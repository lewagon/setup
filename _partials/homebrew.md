## Homebrew

On Mac, you need to install [Homebrew](http://brew.sh/) which is a Package Manager.
It will be used as soon as we need to install some software.
To do so, open your Terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

This will ask for your confirmation (hit `Enter`) and your laptop session password.

---

<details>
  <summary>Click here if you are using <bold>Apple ARM</bold></summary>

  &nbsp;
  
  :warning: `brew` is actually not 100% compatible with macOS 11 Big Sur. You can [check the status on the issue](https://github.com/Homebrew/brew/issues/7857).

```bash
# Apple ARM processor only!
Homebrew is not (yet) supported on ARM processors!
Rerun the Homebrew installer under Rosetta 2.
```

To get Homebrew working, let’s install it using Rosetta:
```bash
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

</details>

---

If you already have Homebrew, it will tell you so, that's fine, go on.

Then install some useful software:

```bash
brew update
```

If you get a `/usr/local must be writable` error, just run this:

```bash
sudo chown -R $USER:admin /usr/local
brew update
```

Error message or not, proceed running the following in the terminal (you can copy / paste all the lines at once).

```bash
function install_or_upgrade { brew ls | grep $1 > /dev/null; if (($? == 0)); then brew upgrade $1; else brew install $1; fi }
install_or_upgrade "git"
install_or_upgrade "wget"
install_or_upgrade "imagemagick"
install_or_upgrade "jq"
install_or_upgrade "openssl"
```
