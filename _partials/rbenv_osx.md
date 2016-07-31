## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv))

First we need to clean up any previous Ruby installation you might have:

Open a Terminal, and run the following. It will ask for your password again.

```bash
if [ -x "$(command -v rvm)" ]; then rvm implode && sudo rm -rf ~/.rvm; fi
sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

Now let's get `rbenv` and `ruby-build` packages from Homebrew, they'll be useful.

```bash
brew uninstall --force rbenv ruby-build
unset RBENV_ROOT && source ~/.zshrc
brew install rbenv ruby-build && source ~/.zshrc
```
