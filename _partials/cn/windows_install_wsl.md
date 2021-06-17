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

## Ubuntu
### 安装


- 点击`Start`
- 输入`Microsoft Store`
- 点击列表中的微软的Windows商店
>
>
- 在搜索栏里搜索`Ubuntu`
- 选择没有数字的版本，就只是一个单词"Ubuntu"
>
>
- 点击`安装`


:warning: 不要安装**Ubuntu 18.04 LTS**或者**Ubuntu 20.04**!

---

#### :wrench: 可能的解决方案


<details>
  <summary>卸载不正确版本的Ubuntu</summary>

  &nbsp;


  要卸载不正确的版本，你只需要打开Windows 10的已安装软件的列表：


  - 按下`Windows` + `R`
  - 输入`ms-settings:appsfeatures`
  - 按下`Enter`


  找到正确的软件然后点击卸载按钮。
</details>

---


&nbsp;
一旦安装完成了，`安装`按钮就会变成`启动`按钮：


- 点击`启动`


第一次启动的时候，你会需要填写一些信息：
- 选择一个**用户名**:
    - 一个词
    - 全小写
    - 不要特殊字符
    - 举个例子: `lewagon`或者你的`firstname`
- 选择一个**密码**
- 确认你的密码


:warning: 当你输入密码的时候，屏幕上什么都不会出现 -- 因为在这里，虽然你输入的信息都已经被录入了，但是不会有输入的指针。

:warning: 这是一个安全的功能。这样不仅你的密码不会被看见，长度也不会被知道。


&nbsp;


&nbsp;&nbsp;&nbsp; :white_check_mark: 安装应该都完成了。现在你可以选择Ubuntu窗口了！

### 检查Ubuntu的WSL version


- 按下`Windows` + `R`
- 输入`cmd`
- 按下`Enter`


输入下面的命令：

```bash
wsl -l -v
```

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果Ubuntu WSL的版本是1，你需要把它换成2。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果Ubuntu WSL版本是2，你就可以安装VS Code了！


---

#### :wrench: 可能的解决方案


<details>
  <summary>把Ubuntu WSL V1换成V2</summary>


  &nbsp;


  在命令提示字元窗口，输入：

  ```bash
  wsl --set-version Ubuntu 2
  ```

  &nbsp;

  &nbsp;&nbsp;&nbsp; :white_check_mark: 几秒之后，你应该会收到这条转换完成的信息：`The conversion is complete`.

  &nbsp;&nbsp;&nbsp; :x: 如果不行的话，我们就需要检查并确保Ubuntu文件没有被压缩。
</details>

<details>
  <summary>检查没有被压缩的文件</summary>


  &nbsp;
  - 按下`Windows` + `R`
  - 输入`%localappdata%\Packages`
  - 按下`Enter`
  >
  >
  - 打开这个文件夹`CanonicalGroupLimited.UbuntuonWindows...`
  - 右击`LocalState`文件夹
  - 点击`Properties`（属性）
  - 点击`Advanced`（高级）
  - 确保`Compress content`（压缩内容）选项**没有**被选，然后点击`Ok`。


  只对这个文件夹应用修改，然后再试试换Ubuntu WSL的版本。


  &nbsp;&nbsp;&nbsp; :x: 如果转换还是不行，**叫老师来帮忙**。
</details>

---


(现在你可以关掉命令提示字元窗口了。)


