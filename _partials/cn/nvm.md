## Node.js

[Node.js](https://nodejs.org/zh-cn/) 是一个Javascript的运行时刻，用来在终端运行Javascript代码。让我们用Node.js的版本管理器[nvm](https://github.com/nvm-sh/nvm)来安装。

在终端，运行这行命令：

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v<NVM_VERSION>/install.sh | zsh
exec zsh
```

然后执行下方指令：

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

如果你看到了`v<NODE_VERSION>`，安装就成功了:heavy_check_mark: 你就可以运行下面的命令：

```bash
nvm cache clear
```

:x: 如果没有的话, **请求助老师**
