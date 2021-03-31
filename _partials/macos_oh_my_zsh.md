## Oh-my-zsh - Fancy your Terminal

We will use the shell named `zsh` instead of `bash`, the default one, alongside with useful and fancy [`oh-my-zsh`](https://ohmyz.sh/) plugins:

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Be careful, at the end of this script, it will prompt for your macOS user account password again (Remember! No visual feedback!). You should get something like:

```bash
         __                                     __
  ____  / /_     ____ ___  __  __   ____  _____/ /_
 / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
                        /____/                       ....is now installed!
````

Now quit the Terminal (`⌘` + `Q`) and restart it.

You should see something like this:

![](images/on-my-zsh.png)

If not, **stop right away** and call a teacher.

On Mac, open `Terminal > Preferences` and set the "Pro" theme as default in `Profiles` (*`Réglages`* in French).

![](images/terminal-pro.png)

**Quit** and restart the Terminal. It should now have a nice black background, more easy on the eyes.

:bulb: There are plenty of themes available on the Internet like [MaterialDark](https://github.com/lysyi3m/macos-terminal-themes#materialdark-download) if you fancy trying another one. That's something you can configure later during the day or come back to it if you are done with your setup early. Please carry on with the Github setup!

## Apple Silicon computers

<details>
  <summary>Forgot if your computer uses Apple Silicon?</summary>

  &nbsp;


  Copy-paste the following command in the terminal and hit `Enter` to execute the command.
  <!-- TODO(dmilon): update branch when merged to master -->
  ``` bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lewagon/vscode/master/utils/macos_list_processor_type.sh)"
  ```

  ☝️ The result of the command should indicate whether your computer uses Apple Silicon.

</details>

If your computer uses **Apple Silicon**, run the following command. If not, ignore it.

``` bash
echo 'export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"' >> ~/.zshrc
```
