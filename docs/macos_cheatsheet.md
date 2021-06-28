Hello and welcome to this Apple M1 Cheatsheet.

The goal is to gather here all tips and known issues with MacOs!

- [Issues](https://github.com/lewagon/setup/blob/master/docs/macos_cheatsheet.md#issues)
  - [Install brew](https://github.com/lewagon/setup/blob/master/docs/macos_cheatsheet.md#install-brew)
- [Tips](https://github.com/lewagon/setup/blob/master/docs/macos_cheatsheet.md#tips)
  

# Issues

## Install Brew

To get Homebrew working, let’s install it using Rosetta:
```bash
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
