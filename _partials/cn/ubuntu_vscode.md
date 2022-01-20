## Visual Studio Code

### 安装

让我们一起安装[Visual Studio Code](https://code.visualstudio.com)代码编辑器。

复制(`Ctrl` + `C`)下面的指令，并粘贴(`Ctrl` + `Shift` + `v`)到终端里：

```bash
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install -y code
```

这些命令需要你输入密码的时候，请输入！

:warning: 你输入密码的时候，屏幕上不会显示你在输入任何东西，**这是正常的**。这是一个安全措施，保证别人不会看到你的密码内容以及长度。所以输入完成后，敲击回车键（`ENTER`）即可。

### 用终端打开VS Code（Visual Studio Code)

现在我们来**从终端**打开VS Code吧：

```bash
code
```

:heavy_check_mark: 如果VS Code窗口打开了，就没什么问题，进入下一步吧 :+1:

:x: 如果没有的话，**请向老师求助**。
