## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv))

First, we need to clean up any previous Ruby installation you might have:

```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on. It means `rvm` is not
# on your computer, that's what we want!

sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

Now let's get [`rbenv`](https://github.com/rbenv/rbenv) and [`ruby-build`](https://github.com/rbenv/ruby-build) packages from Homebrew, they'll be useful.

```bash
brew uninstall --force rbenv ruby-build
```

Then quit **all your opened terminal windows** (Cmd + Q) and restart one. Then run:

```bash
brew install rbenv
```

Again, quit all your terminal windows and restart.

## Apple Silicon computers

<details>
  <summary>Forgot if your computer uses Apple Silicon ?</summary>

  &nbsp;


  Copy-paste the following command in the terminal and hit `Enter` to execute the command.

  ``` bash
  arch_name="$(uname -m)"

  if [ "${arch_name}" = "x86_64" ]; then
      if [ "$(sysctl -in sysctl.proc_translated)" = "1" ]; then
          echo "Your computer uses Apple Silicon (Rosetta) 🌟"
      else
          echo "Your computer has an Intel processor 🤖"
      fi
  elif [ "${arch_name}" = "arm64" ]; then
      echo "Your computer uses Apple Silicon 🌟"
  else
      echo "Unknown architecture: ${arch_name}, call a TA 🤔"
  fi
  ```

  ☝️ The result of the command should indicate whether your computer uses Apple Silicon.

</details>

If your computer uses **Apple Silicon**, run the following command. If not, ignore it.

``` bash
echo 'export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"' >> ~/.zshrc
```
