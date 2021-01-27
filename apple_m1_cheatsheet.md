Hello and welcome to this Apple M1 Cheatsheet.

The goal is to gather here all tips and known issues about the new processor from Apple!

- [Issues](https://github.com/lewagon/setup/blob/master/apple_m1_cheatsheet.md#issues)
  - [Install brew](https://github.com/lewagon/setup/blob/master/apple_m1_cheatsheet.md#install-brew)
- [Tips](https://github.com/lewagon/setup/blob/master/apple_m1_cheatsheet.md#tips)

# Issues

## Install Brew

To get Homebrew working, let’s install it using Rosetta:
```bash
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

# Tips

M1 step-by-step guide by [progapandist](https://lewagon-alumni.slack.com/team/U2MBKA1J5)

- It’s important that students don’t have brew installed in ARM mode. If they have, uninstall it!
- Go to Application/Utilities folder, duplicate Terminal app (cmd-c cmd-v), name a copy Terminal Rosetta, press cmd-i and check box “Run under Rosetta”. Launch the new terminal app.
- ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
- ```brew install rbenv```
- ```echo 'export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"' >> ~/.zshrc```
- ```rbenv install 2.6.6```
- Open new terminal window… (cmd-n)
- make sure ```~/.zshrc``` contains line ```type -a rbenv > /dev/null && eval "$(rbenv init -)"```
- in a new terminal window/tab type ```where ruby```,  output should be ```/Users/USERNAMEOFSTUDENT/.rbenv/shims/ruby```
- ```rbenv global 2.6.6```
- ```ruby -v```, should say 2.6.6
- Done :-)
- remember! that from now on students should always launch Terminal Rosetta (that runs on emulation), not regular Terminal
