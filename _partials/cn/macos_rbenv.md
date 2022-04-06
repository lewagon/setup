## rbenv

让我们来安装[rbenv](https://github.com/sstephenson/rbenv)，一个帮助我们安装并管理`ruby`环境的软件。

首先，我们需要先清理我们之前可能安装过的Ruby:

```bash
rvm implode && sudo rm -rf ~/.rvm
# 如果出现"zsh: command not found: rvm"报错, 继续后续的步骤. 这是指你的电脑上没有安装`rvm`
# 这是我们想要的！

sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

:warning: 这条指令会需要你输入你的密码。

:warning: 当你输入你的密码的时候，屏幕上不会有任何的显示，**这是正常的**。这是一个安全保护的设置，来隐藏你整个密码，包括它的长度。你可以放心的输入你的密码，结束后按下`Enter`就可以了。

在终端里运行：

```bash
brew uninstall --force rbenv ruby-build
```

然后运行：

```bash
exec zsh
brew install rbenv
```
