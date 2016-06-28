## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv)

First we need to clean up any previous Ruby installation you might have:

Open a Terminal, and run:

```bash
if [ -x "$(command -v rvm)" ]; then rvm implode && sudo rm -rf ~/.rvm; fi
if [ -d ~/.rbenv ]; then sudo rm -rf ~/.rbenv; fi
```

Now let's get `rbenv` and `ruby-build` packages from Homebrew, they'll be useful.

```bash
brew install rbenv || brew upgrade rbenv
brew install ruby-build || brew upgrade ruby-build
```
