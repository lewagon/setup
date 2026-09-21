## Homebrew

[Homebrew](http://brew.sh/)，一个包管理工具：这是一个帮助你在命令行中安装其他软件的软件。让我们一起安装它！

想要安装，你需要打开终端并执行：

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

这将会询问你的确认（按下`Enter`）并输入你的**macOS用户账户密码**（那个当你重启你Macbook时，用来[登入](https://support.apple.com/en-gb/HT202860) 的密码）。

:warning: 当你输入你的密码的时候，屏幕上不会有任何的显示，**这是正常的**。这是一个安全保护的设置，来隐藏你整个密码，包括它的长度。你可以放心的输入你的密码，结束后按下`Enter`就可以了。

如果你已经有了Homebrew,终端会告诉你的。那么一切正常，你可以继续接下来的步骤。

Homebrew安装完成后，运行以下两个命令，将其添加到你的`PATH`中：


```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```


确保你使用的是最新版本：

```bash
brew update
```

然后安装一些有用的软件（你可以一次性复制/粘贴下面的所有命令）：

```bash
brew upgrade git         || brew install -y git
brew upgrade gh          || brew install -y gh
brew upgrade wget        || brew install -y wget
brew upgrade imagemagick || brew install -y imagemagick
brew upgrade jq          || brew install -y jq
brew upgrade openssl     || brew install -y openssl
brew upgrade tree        || brew install -y tree
```
