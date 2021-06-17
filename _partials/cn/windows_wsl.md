## Windows的Linux子系统
### 安装WSL 1
WSL是一个用来运行Ubuntu的开发环境。你可以在[这儿](https://docs.microsoft.com/en-us/windows/wsl/faq)了解更多关于WSL的信息。

我们需要用PowerShell终端来安装WSL：


:warning: 在下面的步骤中，请注意使用 `Ctrl` + `Shift` + `Enter`来用管理员权限执行**Windows PowerShell**，而不是只点击 `Ok`或者敲击`Enter`。


- 按下 `Windows` + `R`
- 输入  `powershell`
- 按下 `Ctrl` + `Shift` + `Enter`


:warning: 在这一步，你可能需要确认UAC权限升级。


&nbsp;
一个蓝色的终端窗口会出现：


- 复制下面的命令
- 单击右键把它们复制到PowerShell窗口（`Ctrl` + `V` 不能再这里使用)
- 按下`Enter`执行这些命令


&nbsp;
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

&nbsp;


&nbsp;&nbsp;&nbsp; :x: 如果你看到报错信息（或者在窗口里看到一些红色的文本），请**叫老师来看看**！

&nbsp;&nbsp;&nbsp; :white_check_mark: 等到上面三组命令都执行完毕，并且没有报错后，重启电脑。


### 升级到WSL 2
等你的电脑重启好，你就可以下载WSL2安装包。


- 打开[下载页面](https://aka.ms/wsl2kernel)，下载安装包（installer）
- 点击`Next`（下一步）
- 点击`Finish`（完成）

![update_wsl](images/update_wsl.jpg)

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果出现了这个错误：`This update only applies to machines with the Windows Subsystem for Linux`, 那就在软件上**右击**，然后选择`uninstall`(卸载); 然后你就可以正常地安装。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果没有错误提示的话，那你现在就可以使用WSL 2了！

### 把WSL 2设置成Windows默认的Linux子系统
WSL 2已经安装好了，那就把它设置成默认的WSL吧：

- 按下 `Windows` + `R`
- 输入  `cmd`
- 按下 `Enter`


在弹出的窗口里面，输入:

```bash
wsl --set-default-version 2
```

&nbsp;


&nbsp;&nbsp;&nbsp; :x: 如果出现了关于虚拟化的信息，请**叫老师来帮忙**。

&nbsp;&nbsp;&nbsp; :white_check_mark: 你可以关掉这个弹出的终端；现在我们就可以安装Ubuntu了！

#### :wrench: 可能的解决方案
<details>
  <summary>激活Windows虚拟机平台功能</summary>

完成[这些](https://www.configserverfirewall.com/windows-10/please-enable-the-virtual-machine-platform-windows-feature-and-ensure-virtualization-is-enabled-in-the-bios/#:~:text=To%20enable%20WSL%202,%20Open,Windows%20feature%20on%20or%20off.&text=Ensure%20that%20the%20Virtual%20Machine,Windows%20will%20enable%20WSL%202)步骤，然后确保最后你激活了<strong>虚拟机平台</strong>和<strong>Windows的Linux子系统</strong>。

</details>

<details>
  <summary>激活Windows的Hyper-V功能</summary>

完成[这些](https://winaero.com/enable-use-hyper-v-windows-10/)步骤，然后确保你激活了<strong>Hyper-V</strong>。

</details>
