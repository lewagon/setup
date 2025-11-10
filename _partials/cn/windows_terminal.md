## Windows终端

### 安装

:information_source: 接下来的步骤是要看你的Windows系统版本的。

如果你是Windows 11，那么你的Windows终端已经装好了。直接进入下一步吧:point_down:

如果你是Windows 10，那我们来装Windows终端吧，一个真正的现代终端：

- 点击`Start`
- 输入`Microsoft Store`
- 点击列表上的``Mircosoft Store`
- 搜索`Windows Terminal`
- **选择Windows Terminal"**
- 点击`安装`

:warning: 不要安装**Windows Terminal Preview**，安装**Windows Terminal**就好了！

<details>
  <summary>卸载错误版本的Windows Terminal</summary>

  要下载错误版本的Windows Terminal的话，你需要去到Windows 10的已装软件列表：

  - 按下`Windows` + `R`
  - 输入`ms-settings:appsfeatures`
  - 按下`Enter`

  找到需要卸载的软件，然后点击卸载（uninstall）按钮。
</details>

当安装完成之后，`安装（Install）` 按钮就会变成`启动（Launch）`按钮：点击这个按钮吧！

### Ubuntu作为默认终端

让我们把Ubuntu变成Windows终端应用的默认终端吧！

点击`Ctrl` + `,`

它会打开设置：

![Windows Terminal Settings](images/windows_terminal_settings.png)

- 把默认的profile改成"Ubuntu"
- 点击"Save"
- 点击"Open JSON file"

你需要改动的是被红色圈起来的部分：

![Windows Terminal JSON settings file](images/windows_terminal_settings_json.png)

首先，我们要让Ubuntu从Ubuntu主目录启动，而不是Windows的主目录：
- 找到`"name": "Ubuntu",`
- 把下面这行加在后面：

```bash
"commandline": "wsl.exe ~",
```

:warning: 别忘了这行最后有个逗号哟！

然后，我们把Windows和Ubuntu之间复制粘贴的警告禁用了吧：
- 找到`"defaultProfile": "{2c4de342-...}"`这行
- 在它后面加上这行：

```bash
"warning.multiLinePaste": false,
```

:warning: 别忘了这行最后有个逗号哟！

现在按这两个键`Ctrl` + `S`保存一下。

:heavy_check_mark: 好咯, 你的**Windows终端**就设置好了！:+1:

这个终端有标签页的功能：你可以通过点击当前标签页旁边的**+**来打开一个新的标签页。

**从现在开始，每次我们说终端的时候，就是在指这个终端。**不用使用其他的terminal了。
