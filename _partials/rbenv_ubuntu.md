## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv))

First we need to clean up any previous Ruby installation you might have:

Open a Terminal, and run:

```bash
if [ -x "$(command -v rvm)" ]; then rvm implode && sudo rm -rf ~/.rvm; fi
if [ -d ~/.rbenv ]; then sudo rm -rf ~/.rbenv; fi
```

Then in the terminal, run:

```bash
sudo apt-get install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
sudo apt-get clean
sudo mkdir -p /usr/local/opt && sudo chown `whoami`:`whoami` $_
git clone https://github.com/rbenv/rbenv.git /usr/local/opt/rbenv
git clone https://github.com/rbenv/ruby-build.git /usr/local/opt/rbenv/plugins/ruby-build
source ~/.zshrc
```

You should get a warning in the prompt, just **ignore** it from now (Ruby is not installed yet).
