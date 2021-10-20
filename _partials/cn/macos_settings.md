## macOS设置

### 安全

你必须使用密码来保护你的电脑。如果你还没有设置过密码的话，请前往`>系统偏好设置>用户和组`并更改您的帐户密码。您还应该前往`>系统偏好设置>安全性>通用`。睡眠或屏幕保护程序启动的`5秒`后，您应该要求输入密码。

您也可以前往` > 系统偏好设置 > 任务控制`，然后单击左下角的`Hot Corners`按钮。选择右下角以启动屏幕保护程序。这样，当您离开办公桌时，可以通过将鼠标置于右下角来快速锁定屏幕。5秒钟后，您的Macbook将被锁定，并要求输入密码以恢复。

### 键盘

当你成为了一名程序员的时候，你将明白离开键盘去操作将会耗费大量的时间，所以你将会想最大化的减少花费在触控盘和鼠标的时间。以下是一些在macOS上的小技巧可以帮助你做到这些。

#### 键盘速度

前往  > 系统偏好设置 > 键盘。设置`Key Repeat`到最快的位置（最右边）并将`Delay Until Repeat`移到最短的位置（最右边）。

#### 全部键盘权限

前往  > 系统偏好设置 > 键盘。点击第三个标签页（Shortcuts）。在窗体的底部，点击`All controls`单选按钮。这样的话，当你遇见一个带有多个选项的对话窗的时候，你可以按`Enter`来确认，或者按`Space`来选择取消选项。如果你遇到超过两个选项的对话窗，你可以按tab键来切换选择。

#### 黑客的macOS

[阅读这个脚本](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)然后挑选一些你认为适合你的指令。例如，您可以在终端中输入以下内容：

```bash
# 默认情况下扩展保存面板
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# 将截屏保存到桌面（或其他位置）
defaults write com.apple.screencapture location "${HOME}/Desktop"

# etc..
```

### 将应用程序固定在你的Dock上

你将会经常使用今天安装的大部分应用程序。所以让我们把这些应用程序固定在Dock上，这样我们就很容易打开他们啦！

我们需要启动程序，右键点击，打开菜单栏并选择“选项”（Options），然后选择“保留在Dock上”（Keep in Dock）。

![How to pin an app to the dock in macOS](images/macos_dock.png)

你一定要固定以下应用程序:
- 你的终端
- 你的文件资源管理器
- VS Code
- 你的浏览器
- Slack
- Zoom
