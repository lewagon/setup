## 键盘

当你成为了一名程序员的时候，你将明白离开键盘去操作将会耗费大量的时间，所以你将会想最大化的减少花费在触控盘和鼠标的时间。以下是一些在OSX上的小技巧可以帮助你做到这些：

### 键盘速度

前往  > 系统偏好设置 > 键盘。设置`Key Repeat`到最快的位置（最右边）并将`Delay Until Repeat`移到最短的位置（最右边）。

### 全部键盘权限

前往  > 系统偏好设置 > 键盘。点击第三个标签页（Shortcuts）。在窗体的底部，点击`All controls`单选按钮。这样的话，当你遇见一个带有多个选项的对话窗的时候，你可以按`Enter`来确认，或者按`Space`来选择取消选项。如果你遇到超过两个选项的对话窗，你可以按tab键来切换选择。

### 黑客的macOS

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
