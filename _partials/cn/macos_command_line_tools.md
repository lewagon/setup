## 一个有关在mac上跳出应用程序的小贴士

在mac上点击应用程序窗口左上方的小红叉**并不是真正的退出了它**，他只是关闭了一个活跃窗口。如果想要 _真正_ 的退出应用程序，你需要在应用活跃的时候按`Cmd + Q`，或者在你的菜单栏里前往`APP_NAME` -> 点击`Quit`

![Quit Terminal on macOS](images/macos_quit.png)

在这个设置教程中，你将会被要求**退出并重启**应用程序很多次，请确保你可以正确的退出重启 :pray:

## 命令行工具

打开一个新的终端窗口,复制粘贴以下指令到你的终端并按下`Enter`来执行指令:

```bash
xcode-select --install
```

如果你收到了以下消息，你可以直接就跳过这一步并前往下一步。

```bash
# command line tools are already installed, use "Software Update" to install updates
```

不然的话，他将会打开一个窗口询问你是否想要下载一些软件: 点击“Install”（安装）并等待。

![Install xcode-select on macOS](images/macos_xcode_select_install.png)

:heavy_check_mark: 当你看到"The software was installed"这条消息的时候，你就可以继续下一步了 :+1:

:x: 如果`xcode-select --install` 指令失败了，再重新试着运行一次：有时候Apple服务器会过载。

:x: 如果你看到"Xcode is not currently available from the Software Update server",你就需要更新你的软件系统：

```bash
sudo softwareupdate --clear-catalog
```

这个执行结束之后，你可以尝试再一次安装（复制粘贴以下指令并按下Enter）。
