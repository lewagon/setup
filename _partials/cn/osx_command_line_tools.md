## 一个有关在mac上跳出应用程序的小贴士

在mac上点击应用程序窗口左上方的小红叉**并不是真正的退出了它**，他只是关闭了一个活跃窗口。如果想要 _真正_ 的退出应用程序，你需要在应用活跃的时候按`Cmd + Q`，或者在你的菜单栏里前往`APP_NAME` -> 点击`Quit`

![quit.png](images/quit.png)

在这个设置教程中，你将会被要求**退出并重启**应用程序很多次，请确保你可以正确的退出重启 :pray:

## 命令行工具

从Applications > Utilities或者[Spotlight](https://support.apple.com/en-gb/HT204014)搜索，打开一个新的终端窗口。

复制粘贴以下指令到你的终端并按下`Enter`来执行指令。

```bash
xcode-select --install
```

如果你收到了以下消息，你可以直接就跳过这一步并前往下一步。

```
# command line tools are already installed, use "Software Update" to install updates
```

不然的话，他将会打开一个窗口询问你是否想要下载一些软件。同意并等待。如果失败了，在重新尝试一下`xcode-select --install`这个指令，有的时候Apple服务器会过载。

![](images/xcode-select-install.png)

当你下载的时候，你可以继续前往GitHub账户的设置，但是要在Homebrew章节前**停下来**。你将需要安装好的命令行工具来执行那一章节。

如果你收到了以下消息，你需要更新软件更新目录。

```
Xcode is not currently available from the Software Update server
```

如果遇到这种情况的话，你需要复制粘贴以下指令并按下Enter。

```bash
sudo softwareupdate --clear-catalog
```

这个执行结束之后，你可以尝试再一次安装（复制粘贴以下指令并按下Enter）。

```bash
xcode-select --install
```

然后你便可以继续接下来的教程啦。
