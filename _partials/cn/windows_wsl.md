## Windows的Linux子系统

WSL是一个用来运行Ubuntu的开发环境。你可以在[这儿](https://docs.microsoft.com/en-us/windows/wsl/faq)了解更多关于WSL的信息。

:information_source: 接下来的步骤是要看你的Windows系统版本的。请执行你对应系统版本的步骤哦:point_down:

### Windows 11

如果你是Windows 11，我们就在Windows终端用一个命令来安装WSL 2和Ubuntu。

:warning: 在下面的步骤中，请使用 `Ctrl` + `Shift` + `Enter`来用管理员权限执行**Windows终端**，而不是只点击 `Ok`或者敲击`Enter`。

- 按下 `Windows` + `R`
- 输入  `powershell`
- 按下 **`Ctrl` + `Shift` + `Enter`**

:warning: 在这一步，你可能需要确认UAC权限升级。

一个蓝色的终端窗口会出现：
- 复制下面的命令(`Ctrl` + `C`)
- 单击右键把它们复制到PowerShell窗口（`Ctrl` + `V` 不能再这里使用)
- 按下`Enter`执行这些命令

```powershell
wsl --install
```

:heavy_check_mark: 如果这个命令执行好后没有任何错误，那就重启电脑然后继续下面步骤:+1:

:x: 如果你看到了错误信息（或者你在窗口里看到红色的字），请**叫老师来帮忙**。

### Windows 10

#### 安装WSL 1

如果你是Windows 10，你首先要用PowerShell终端来安装WSL 1。

:warning: 在下面的步骤中，请使用 `Ctrl` + `Shift` + `Enter`来用管理员权限执行**Windows终端**，而不是只点击 `Ok`或者敲击`Enter`。

- 按下 `Windows` + `R`
- 输入  `powershell`
- 按下 **`Ctrl` + `Shift` + `Enter`**

:warning: 在这一步，你可能需要确认UAC权限升级。

一个蓝色的终端窗口会出现：
- 复制下面的命令(`Ctrl` + `C`)
- 单击右键把它们复制到PowerShell窗口（`Ctrl` + `V` 不能再这里使用)
- 按下`Enter`执行这些命令

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

:heavy_check_mark: 如果这个命令执行好后没有任何错误，那就重启电脑然后继续下面步骤:+1:

:x: 如果你看到了错误信息（或者你在窗口里看到红色的字），请**叫老师来帮忙**。


#### 升级到WSL 2

如果你是Windows 10，你需要把WSL升级到2。

等你的电脑重启好，你就可以下载WSL2安装包。

- 打开[下载页面](https://aka.ms/wsl2kernel)
- 下载安装包"WSL2 Linux kernel update package"
- 点击`Next`（下一步）
- 点击`Finish`（完成）

![Update WSL from version 1 to 2](images/windows_update_wsl.png)

:heavy_check_mark: 如果没有错误提示的话，那你现在就可以使用WSL 2了！

:x: 如果出现了这个错误：`This update only applies to machines with the Windows Subsystem for Linux`, 那就在软件上**右击**，然后选择`uninstall`(卸载); 然后你再安装一次，这次应该可以正常地安装。

#### 把WSL 2设置成Windows默认的Linux子系统

如果你用的是Windows 10的话，我们就需要把WSL默认版本设成2。

现在WSL 2已经安装好了，那就把它设置成默认的WSL吧：
- 按下 `Windows` + `R`
- 输入  `cmd`
- 按下 `Enter`

在弹出的窗口里面，输入:

```bash
wsl --set-default-version 2
```

:heavy_check_mark: 如果你看到“The operation completed successfully（成功完成设置）”，那你就可以关掉这个终端，然后继续跟着下面的指示:+1:

:x: 如果出现了关于虚拟化的信息，请**叫老师来帮忙**。

<details>
  <summary>激活Windows虚拟机平台功能</summary>

完成[这些](https://www.configserverfirewall.com/windows-10/please-enable-the-virtual-machine-platform-windows-feature-and-ensure-virtualization-is-enabled-in-the-bios/#:~:text=To%20enable%20WSL%202,%20Open,Windows%20feature%20on%20or%20off.&text=Ensure%20that%20the%20Virtual%20Machine,Windows%20will%20enable%20WSL%202)步骤，然后确保最后你激活了<strong>虚拟机平台</strong>和<strong>Windows的Linux子系统</strong>。
</details>

<details>
  <summary>激活Windows的Hyper-V功能</summary>

完成[这些](https://winaero.com/enable-use-hyper-v-windows-10/)步骤，然后确保你激活了<strong>Hyper-V</strong>。

:information_source: 如果你的电脑是Windows 10 **Home edition**，那你的操作系统上就没有Hyper-V的功能。这不会妨碍什么，你继续下面的步骤就好:ok_hand:
</details>
