## Node.js

[Node.js](https://nodejs.org/en/)是一个JavaScript运行环境以在终端运行JavaScript代码。让我们一起用[nvm](https://github.com/nvm-sh/nvm)，一个Node.js的版本管理器，来安装Node.js。

在终端里，运行以下指令：

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v<NVM_VERSION>/install.sh | zsh
```

重启你的终端并执行下方指令：

```bash
nvm -v
```

你应该会看到你的nvm的版本。如果没有的话，问一下你的老师。

现在，让我们来安装node：

```bash
nvm install <NODE_VERSION>
```

当这个指令执行结束之后，运行：

```bash
node -v
```

如果看到`v<NODE_VERSION>`，那么你安装成功了:heavy_check_mark: 然后，你就可以运行下面这个命令了：

```bash
nvm cache clear
```

:x: 如果没有看到版本的话，**问一下你的老师**。
