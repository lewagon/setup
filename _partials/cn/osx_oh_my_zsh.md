## Oh-my-zsh - 美化你的终端

我们将使用一个叫做`zsh`的shell，取代默认的`bash`，并使用有用炫酷的[`oh-my-zsh`](https://ohmyz.sh/)插件：

```bash
sh -c "$(curl -fsSL https://web-dev-challenge-lewagon-image.oss-cn-shanghai.aliyuncs.com/setup/install_ohmyzsh.sh)"
```

注意，在这个脚本的最后，它会再次提示输入你macOS用户账户密码（记住！终端上不会在你输入密码的时候给你视觉反馈！）。你会类似以下的东西：

```bash
         __                                     __
  ____  / /_     ____ ___  __  __   ____  _____/ /_
 / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \
/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / /
\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/
                        /____/                       ....is now installed!
````

现在退出终端（`⌘` + `Q`）并重启它。

你会看到以下内容：

![](images/on-my-zsh.png)

如果没有的话，**立马停下来**并寻求老师的帮助。

在Mac上，打开`Terminal > Preferences`并在`Profiles`中将“Pro”主题设置为默认。

![](images/terminal-pro.png)

**退出**并重启终端。它现在会有一个好看的黑色背景，对眼睛会更友好。

:bulb: 如果你想尝试其他主题的话，网上有许多可用的主题，比如[MaterialDark](https://github.com/lysyi3m/macos-terminal-themes#materialdark-download)。换主题的部分你可以在你其他设置都设置好后，回头继续做。请先继续Github的设置！

## Apple Silicon

<details>
  <summary>忘记你的电脑是否是使用Apple Silicon的了?</summary>

  &nbsp;

  复制粘贴下方的代码到终端中并按下`Enter`来执行指令。

  ``` bash
  /bin/bash -c "$(curl -fsSL https://web-dev-challenge-lewagon-image.oss-cn-shanghai.aliyuncs.com/setup/osx_list_processor_type.sh)"
  ```

  ☝️ 这个指令的输出可以显示你的电脑是否是使用Apple Silicon的。

</details>

如果你的电脑使用**Apple Silicon**，运行以下指令。如果不是，请忽略它。

``` bash
echo 'export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"' >> ~/.zshrc
```
