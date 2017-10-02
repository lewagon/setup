## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv))

First we need to clean up any previous Ruby installation you might have:

```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on. It means `rvm` is not
# on your computer, that's what we want!

rm -rf ~/.rbenv
```

Then in the terminal, run:

```bash
sudo apt-get install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
sudo apt-get clean
sudo mkdir -p /usr/local/opt && sudo chown `whoami`:`whoami` $_
git clone https://github.com/rbenv/rbenv.git /usr/local/opt/rbenv
git clone https://github.com/rbenv/ruby-build.git /usr/local/opt/rbenv/plugins/ruby-build
```

**Restart your terminal** (Alt+F4 and restart it). If you get a warning, just **ignore** it from now (Ruby is not installed yet).
