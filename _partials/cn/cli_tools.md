## Command line tools

### Zsh & Git

我们将使用`zsh`来代替默认的`bash` [shell](https://zh.wikipedia.org/zh-cn/殼層)。

我们也会使用[`git`](https://git-scm.com/)，它是一个用来进行版本控制的命令行软件。

下面来安装这些工具吧：
- 打开终端
- 复制粘贴下面的命令：

```bash
sudo apt update
sudo apt install -y curl git imagemagick jq unzip vim zsh
```

这些指令会问你的密码：输入你的密码。

:warning: 当你输入你的密码的时候，屏幕上不会有任何的显示，**这是正常的**。这是一个安全保护的设置，来隐藏你整个密码，包括它的长度。你可以放心的输入你的密码，结束后按下`Enter`就可以了。

### 安装GitHub CLI

现在我们来安装GitHub[官方命令行界面（CLI)](https://cli.github.com) (Command Line Interface)。这是一个用来在终端里和你的GitHub账户交互的一个软件。

在你的终端里，复制粘贴以下代码，并在需要的时候，输入你的密码:

```bash
sudo apt remove -y gitsome # gh command can conflict with gitsome if already installed
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh
```

你可以运行以下的命令，来检查`gh`是否成功安装了：

```bash
gh --version
```

:heavy_check_mark: 如果你看到了`gh version X.Y.Z (YYYY-MM-DD)`，你就可以继续下一步啦！:+1:

:x: 如果没有看到话，**问问老师**。
