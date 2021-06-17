## 安装Ruby (使用[rbenv](https://github.com/sstephenson/rbenv))

首先，我们需要先清理我们之前可能安装过的Ruby:

```bash
rvm implode && sudo rm -rf ~/.rvm
# 如果出现"zsh: command not found: rvm"报错, 继续后续的步骤. 这是指 `rvm` is not
# 如果出现"zsh: command not found: rvm"报错, 继续后续的步骤. 这是指 你的电脑上没有安装`rvm`
# 这是我们想要的！

sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

现在让我们来通过Homebrew来获取[`rbenv`](https://github.com/rbenv/rbenv)和[`ruby-build`](https://github.com/rbenv/ruby-build)，他们将会很有用。

```bash
brew uninstall --force rbenv ruby-build
```

然后退出**所有你打开着的终端窗口**（Cmd + Q)并重启新的一个。然后运行：

```bash
brew install rbenv
```

再一次，退出所有你的终端窗口并重启。
