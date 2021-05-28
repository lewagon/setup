# 设置指南

以下的步骤会帮助你设置好你的电脑，为[Le Wagon](http://www.lewagon.org)全栈课程做准备：

- 下载一个代码编辑器，你会和这个编辑器一起共度很多时光
- 安装一个程序包管理器
- 配置好你的终端
- 设置好git和Github
- 下载Ruby


## 开始设置的条件

在开始之前，很重要的一件事是先看看你的电脑设置有没有满足这些条件！这样才能保证配置成功。
请花点时间仔细阅读所有的文字。如果有问题，不要犹豫向老师提问哦。

准备好了吗？我们开始吧 :sunglasses:



### Windows 10

你的电脑需要更新到最新的Windows版本。

意思就是你的电脑必须是 **Windows 10**，而且也下载安装了最近的更新。

检查windows版本的方式：


- 按下 `Windows` + `R`
- 输入  `winver`
- 按下 `Enter`

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果你的电脑没有提示**Windows 10**，那么你暂时不能继续设置的步骤。但别担心，你现在就可以更新到Windows 10！

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果窗口里的前几个词就是**Windows 10**的话，你可以直接到下一步了！ :muscle:


---

#### :wrench: 可能的解决方案

<details>
  <summary>更新到Windows 10</summary>

  &nbsp;
  - 从[Microsoft](https://www.microsoft.com/software-download/windows10ISO)下载Windows 10
  - 下载后就可以安装它。应该会花掉差不多1小时的时间，这取决于你的电脑。
</details>

---


确保你的电脑在用Windows 10之后，你就可以检查你的电脑是不是有最新的版本。



### 最新的Windows版本

打开Windows Update：


- 按下 `Windows` + `R`
- 输入  `ms-settings:windowsupdate`
- 按下 `Enter`
>
>
- 点击 `检查更新`(`Check updates`)

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果出现关于无法更新的错误提示，**叫老师**来看看。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果你看到有可以更新的版本，请安装它然后重复以上步骤直到电脑提示你所有的东西都是最新版本了。


---

#### :wrench: 可能的解决方案

<details>
  <summary>启用Windows Update Service（Windows更新服务）来修复更新</summary>

  &nbsp;


  有些软件可能会禁用我们想用的更新服务。所以更新的时候你的电脑就会报错。可以这样修复它！


  - 按下 `Windows` + `R`
  - 输入  `services.msc`
  - 按下 `Enter`
  >
  >
  （如果你的电脑系统语言是中文，你可以找到下面英文按键的对应中文按键。如果找不到，可以问问老师！）
  - 双击 `Windows Update Service`
  - 把它从 `Startup` 改成 `Automatic`
  - 点击 `Start`
  - 点击 `Ok`

  现在，我们再来试试更新吧！
</details>

---

### 最小版本

有些我们需要的工具已经在Windows 10的`1903`或**之后**的版本中发布了。所以请保证你最少要这个版本！


- 按下 `Windows` + `R`
- 输入  `winver`
- 按下 `Enter`


检查**版本号**:


&nbsp;&nbsp;&nbsp; :x: 如果低于`1903`, 你可以根据上面[最新的Windows版本](#Latest-version-of-Windows)的部分来安装更新。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果你是`1903`或以上的版本, 你就可以继续下一步了！ :sunglasses:



### 虚拟化


我们需要保证你电脑的虚拟化选项是激活的。

对于大多数电脑来说，这个选项已经被激活了。不过还是检查一下吧:


- 按下 `Windows` + `R`
- 输入  `taskmgr`
- 按下 `Enter`
>
>
- 点击 `Performance`
- 点击 `CPU`


![task_manager.jpg](images/task_manager.jpg)

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果这一行没有出现，或者显示禁用了，请**让老师来帮你激活虚拟化**。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果被激活了的话，那在图表下方会显示状态 "Virtualization: Enabled"。


---

#### :wrench: 可能的解决方案

<details>
  <summary>激活虚拟化</summary>

  &nbsp;


  要激活它，我们需要访问电脑的 BIOS / UEFI。

  - 按下 `Windows + R`
  - 输入  `shutdown.exe /r /o /t 1`
  - 按下 `Enter`
  >
  >
  - 等待电脑关机
  >
  >
  - 点击 `Troubleshoot`
  - 点击 `Advanced Options`
  - 点击 `UEFI Firmware Settings`
  - 点击 `Restart`


  在这儿，你需要激活你处理器的虚拟化选项：
  - 大多数时候，在高级设置里面，CPU设置，或者北桥（Northbridge）设置里面
  - 电脑不一样，选项的名称可能也不一样：
      - 因特尔（Intel）: `Intel VT-x`, `Intel Virtualization Technology`, `Virtualization Extensions`, `Vanderpool`...
      - AMD: `SVM Mode` 或者 `AMD-V`
  - 在激活后请保存，然后重启电脑
</details>

---



## GitHub账号

你注册GitHub账号了吗？如果没有的话，[赶紧现在就注册吧！](https://github.com/join).

:point_right: **[上传头像照片](https://github.com/settings/profile)**然后正确地填写你的名字。这很重要哦 - 因为你的头像和名字都会在内部系统中使用。请**现在**就这样做，然后再继续下一步！
![](images/github_upload_picture.png)


## 远程工具

当我们不在同一个地方的时候，我们会用到下面这两个工具来交流：

### Zoom

⚠️ 如果你已经安装了Zoom，请确保你Zoom的版本不低于**5.4**。否则，你将不能使用分组讨论室来和你的伙伴一起工作。

Zoom是一个视频会议工具。想要创建账户并安装这个应用，你需要到[https://zoom.us/download](https://zoom.us/download)这个网页，并在**Zoom会议客户端（Zoom Client for Meetings）**下方点击**下载（Download）**按钮。打开你刚下载好的文件。将出现一个进度条，然后Zoom便会开始。点击**Connection** 并创建一个账户，选择**Sign Up Free**选项：

![zoom-sign-up-free.png](images/zoom-sign-up-free.png)

当你连接成功后，你将会看到:

![zoom-welcome-screen.png](images/zoom-welcome-screen.png)

现在你可以关闭Zoom了。



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



## Visual Studio Code

在Windows上，我们会用Visual Code Studio来编辑代码，因为它和Ubuntu终端配合得很好~

想让它们一体化的话，你需要卸载其他的代码编辑器，比如SublimeText，因为它们会干扰VSCoed和WSL的一体化。

### 安装
- 打开[Visual Studio Code page](https://code.visualstudio.com/download)
- 选择Windows版本的VS Code


然后，就会开始自动下载了。

- 打开你刚下载的文件。
- 安装它的时候需要改变一下选项:
    - 把VS Code注册成一个支持文件类型的编辑器
    - 其他选项不用变

![VS Code install](images/vscode-install.png)

### 链接Code和Ubuntu

- 首次启动VS Code之后:
    - 把它加在你的任务栏上；你会经常用到它！
    - 在VS Code的右下角，应该有一个框框提示你它检测到了WSL
    - 接受VS Code WSL插件的安装

:warning: 要用VS Code，这个插件必须要安装！

### VS Code快捷键

在VS Code里：
（如果你的电脑系统语言是中文，你可以找到下面英文按键的对应中文按键。如果找不到，可以问问老师！）

- 点击 `File`
- 点击 `Preferences`
- 点击 `Keymaps`
- 点击 `Sublime Text Keymap and Settings Importer`
- 点击 `Install`


### VS Code插件

让我们下载一些其他有用的插件吧！

针对每个插件，你需要:

- 在网站里，点击`install`
- 再浏览器里，接受使用VS Code来安装插件
- 在VS Code里，点击`install`

**插件列表**
- [Sublime Text Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
- [Rails Snippets](https://marketplace.visualstudio.com/items?itemName=hridoy.rails-snippets)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [ERB Helper Tags](https://marketplace.visualstudio.com/items?itemName=rayhanw.erb-helpers)
- [ruby-rubocop](https://marketplace.visualstudio.com/items?itemName=misogi.ruby-rubocop)

### VS Code设置
- 按下`Ctrl` + `,` 来打开设置
- 在搜索栏里，输入`emmet`
- 点击第一个**`Edit in settings.json`**链接

复制，并把下面的部分粘贴在最后的`}`之前:

```bash
"emmet.triggerExpansionOnTab": true,
"emmet.includeLanguages": {
  "erb": "html"
},
```

应该像下面这样：

![vscode_emmet](images/vscode_emmet.jpg)

:warning: 你需要加一个逗号，如果**`]`**后面没有逗号的话，就像上面图片里的第26行一样☝️

:warning: 别忘了要保存这些修改！

### 最终检查

现在我们要保证所有东西都可以正常工作。关掉VS Code，然后打开Ubuntu终端：

- 按下`Windows` + `R`
- 输入`ubuntu`
- 按下`Enter`


在Ubuntu里，我们来试试启动VS Code：

```bash
code
```

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果Visual Studio Code没有打开的话，请**叫老师来帮忙**

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果Visual Studio Code打开了，那说明你的代码编辑器已经好啦！ :muscle:


## Windows终端

标准的Ubuntu终端其实非常的简陋。让我们用一个现代一点的终端吧！

### 安装

我们先要从微软Windows商店安装**Windows终端**：


- 点击`Start`
- 输入`Microsoft Store`
- 点击列表上的微软Windows商店
>
>
- 搜索`Windows Terminal`
>
>
- 点击`安装`


当安装完成之后，`安装` 按钮就会变成`启动`按钮：


- 点击`Launch`
- 右击任务栏的图标
- 选择把这个应用固定在任务栏上


在这个终端里，你可以打开好几个终端会话，包括**PowerShell**， **Command Prompt**和你刚安装的**Ubuntu**。

这个终端有标签页：点击当前页旁边的**下键** / **v型**，就可以打开一个新的终端标签页。

:warning: 从现在开始，你只需要使用**Ubuntu**作为终端。

### Ubuntu作为默认终端

让我们把Ubuntu变成Windows终端应用的默认终端吧！


- 点击`Ctrl` + `,`


应该会打开设置：

![wsl2_settings](images/settings_wsl2.PNG)

红色的部分是我们需要使用或者改变的。


&nbsp;


首先，我们要让Ubuntu从Ubuntu主目录启动，而不是Windows的主目录：



- 找到`"name": "Ubuntu",`
- 把下面这行加在后面：

```bash
"startingDirectory": "//wsl$/Ubuntu/home/the-username-you-chose-at-the-ubuntu-install",
```

:warning: 别忘了这行最后有个逗号哟！

:warning: 别忘了要把这行的用户名改成你自己的呀！


&nbsp;

现在，让Windows终端启动时，直接用Ubuntu终端：



- 找到Ubuntu的`"guid"`
- 复制`{`和`}`之间的内容
- 找到`"defaultProfile"`
- 把刚刚复制的内容粘贴在`{`和`}`之间
- 在`defaultProfile`后面加一个逗号，然后加上这个选项`"multiLinePasteWarning": false,`。这样每次你想在终端复制粘贴很多行的时候，就不会有个很讨厌的提示跑出来了。

你可以看看上面的截图，这个部分应该看起来是那样的。别忘了也可以随时问老师哦！

:warning: 别忘了保存哦！

&nbsp;

&nbsp;&nbsp;&nbsp; :white_check_mark: 好咯, 你的**Windows终端**就设置好了！:confetti_ball:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **从现在开始，每次我们说终端的时候，就是在指这个终端。**



## Git

安装`git`：


- 打开Ubuntu终端
- 复制粘贴下面的命令：


```bash
sudo apt update
```
```bash
sudo apt install -y git apt-transport-https unzip gnome-terminal
````

现在我们来安装GitHub[官方命令行界面（CLI)](https://cli.github.com) (Command Line Interface)。运行以下代码:

```bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install -y gh
```

运行以下的命令，来检查`gh`是否成功安装了：

```bash
gh --version
```

如果这行命令没有提示`gh version X.Y.Z (YYYY-MM-DD)`，且版本（version）大于等于1.4 ，请参考[这个文档](https://github.com/cli/cli/blob/trunk/docs/install_linux.md#official-sources)：这里面有故障排查的方法。如果有困惑，问问老师。


## Oh-my-zsh - 把终端变得好看！

我们会用一个叫`zsh`的shell来代替默认的`bash`。

```bash
# 它会问你会话的密码
sudo apt install -y zsh curl vim imagemagick jq
```
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

最终，你的终端应该会像这样：

![zsh](images/wsl2_zsh.jpg)


&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果你的终端不长这样，那就**叫老师来帮忙**。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果都是ok的，我们就来配置GitHub吧！

---

#### :wrench: 可能的解决方案

<details>
  <summary>错误： "chsh command unsuccessful. Change your default shell manually."</summary>

  &nbsp;


  你可能输入了错误的密码。
  重新跑一边上面的命令是不行的，因为它会新建一个配置文件夹，但其实是你第一次跑这些命令的时候已经建啦！

  所以你需要先删除它：

  ```bash
  rm -rf ~/.oh-my-zsh
  ```


  现在，可以再运行一遍了！
</details>

---


## GitHub

我们需要生成SSH密钥。这些会在GitHub和Heroku上使用。把它当成一种登陆的方式好了，但它和平时用的用户名和密码不一样。如果你之前有生成过密钥，你就可以跳过这个步骤。

打开终端，然后输入下面的命令，把email换成**你自己的**（应该用你注册GitHub的email）。然后它会提示你一些信息。按回车键，直到它问你要**密码**。

```bash
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
```

**敲黑板：** 当它问你要密码时，输入你想要的密码（并且是你可以记住的密码）。这个密码会保护你保存在硬盘上的私钥。你输入的时候，还是不会在屏幕上看到任何东西，这是**正常的！**输入密码，当你输完的时候，按下回车。

然后你需要把**公钥**存到GitHub上。运行下面的命令：

```bash
cat ~/.ssh/id_ed25519.pub
```

它会在屏幕上显示`id_ed25519.pub`文件的内容。


- 复制粘贴出现的内容（公钥）
- 打开[github.com/settings/ssh](https://github.com/settings/ssh)
- 点击绿色的按钮`New SSH key`
- 填你的电脑的名称 （可以自己取一个，比如`My Windows`）
- 粘贴**公钥**
- 点击绿色按钮**Add key**，就完成这个步骤了


再检查一下，在终端里运行：

```bash
ssh -T git@github.com
```

:warning: 它会显示一个警告提示，输入`yes`，然后敲击`Enter`。

这个是应该看到的结果:

```
# Hi --------! You've successfully authenticated, but GitHub does not provide shell access
```

&nbsp;

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果你看到这条信息，那说明密钥已经被成功加上了！

&nbsp;&nbsp;&nbsp; :x: 如果你看到错误提示，你需要重新试试。别忘了你可以*叫老师来帮忙*。


---

#### :wrench: 故障排查

<details>
  <summary>如果<code>ssh -T git@github.com</code> 不行的话</summary>

  &nbsp;


  运行下面的命令，然后再尝试一遍:

  ```bash
  ssh-add ~/.ssh/id_ed25519
  ```
  </details>

---


别着急，花点时间看看[这篇文章](http://sebastien.saunier.me/blog/2015/05/10/github-public-key-authentication.html)来更好地了解那些密钥都是干什么用的。


## GitHub CLI

CLI是[Command-line Interface（命令行界面）](https://en.wikipedia.org/wiki/Command-line_interface)的首字母缩写。

在这一章节里面，我们会安装[GitHub CLI](https://cli.github.com/)。这样我们就可以从终端链接GitHub的数据，执行一些有用的动作。

之前执行的命令应该已经安装了GitHub CLI。首先你需要**登陆**。复制下面的命令（**不要**更改它），然后复制到终端，敲击回车：

```bash
gh auth login -s 'user:email' -w
```

你会看到下面的输出结果：

```bash
- Logging into github.com

! First copy your one-time code: 0EF9-D015
- Press Enter to open github.com in your browser...
```

复制那段验证码（code）(在上面的例子中是`0EF9-D015` ），然后敲击`Enter`。你的浏览器就会打开一个页面让你授权GitHub CLI使用你的GitHub账号。同意，并等待一会儿。回到终端，再次敲击`回车`，然后就应该好啦:tada:

检查一下你有没有链接好：

```bash
gh auth status
```

如果你看到`Logged in to github.com as <你的GitHub用户名> `，那就可以了。如果没有，**问问老师**。

然后运行下面的配置命令:

```bash
gh config set git_protocol ssh
```

最后，新建一个[gist](https://docs.github.com/en/free-pro-team@latest/github/writing-on-github/editing-and-sharing-content-with-gists)来确保`gh` 可以正常运作：

```bash
echo "Hello [Le Wagon](https://www.lewagon.com) :wave:" | gh gist create -d "Starting my coding journey..." -f "SETUP_DAY.md" -p -w
```

这一行命令会在你的浏览器里打开刚创建的gist页面。看呐，我们刚创建了一个[**Markdown**](https://guides.github.com/features/mastering-markdown/)文件！


黑客很喜欢把他们的shell和工具变得很酷炫。

让我们用Le Wagon提供的一个超棒的默认配置文件来开始吧：[`lewagon/dotfiles`](http://github.com/lewagon/dotfiles).

因为你的配置是自用的，所以你需要保存在**自己**的代码库里（repository/repo）。Fork的意思是：在你的GitHub账号上建一个新的代码库，和原始的那一个是一模一样的（可以想象成你在复制粘贴这个代码库）。
这样，你在你的GitHub上就会有一个新的代码库： `$GITHUB_USERNAME/dotfiles`。
我们需要fork，因为每个人都需要在那些文件里加上一些**特定**信息（比如你的名字）。

打开终端，运行下面的命令：

```bash
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo $GITHUB_USERNAME
```

你就能看到你的GitHub用户名在终端里显示出来了。
如果没有的话，现在就**停下**，找老师帮忙。看起来之前的步骤(`gh auth`)有一些问题。

现在就可以fork代码库（repo)，然后克隆到你自己的电脑上了：

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
gh repo fork lewagon/dotfiles --clone
```

运行`dotfiles`安装器：

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh install.sh
```

用下面的命令检查一下你GitHub账号录入的电子邮箱。你需要在其中选一个（如果你有好几个的话），然后再进入下一个步骤：

```bash
gh api user/emails | jq -r '.[].email'
```

运行git安装器：

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: 这会**提示**填写你的全名（`FirstName LastName`）和你的邮箱。注意啦，你**需要**填`gh api ...`命令列出的其中一个电子邮箱。不然，Kitt就没办法跟进你的学习进程。

现在**退出**你刚打开的所有终端窗口。

&nbsp;


现在，我们需要在Visual Code Studio打开`~/.zshrc`档案文件，然后做一些小小的改动：

```bash
code ~/.zshrc
```

- 找到这一行`# Actually load Oh-My-Zsh`
- **在它的上面**写下这一行：

```bash
ZSH_DISABLE_COMPFIX=true
```

&nbsp;


每次跟远程的代码库交流的时候都问你要密码是件很烦的事。所以呀，你需要给`oh my zsh`加上一个`ssh-agent`插件：


- 找到`plugins=`开始的这一行
- 在插件（plugin）列表里加上`ssh-agent`

这个列表现在看起来应该是这样的：

```
plugins=(gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search ssh-agent)
```

&nbsp;


&nbsp;&nbsp;&nbsp; :white_check_mark: 按下`Ctrl` + `S` 保存`.zshrc`文件，然后关掉Visual Code Studio。



## Linking your default browser to Ubuntu
To be sure that you can interact with your browser installed on Windows from your new Ubuntu terminal, we need to set it as your default browser there.

⚠️ You need to execute at least one of the following commands below:


<details>
  <summary>Google Chrome as your default browser</summary>

  &nbsp;


  Run the command:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
  ```

  If you get an error like `ls: cannot access...` Run the following command:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```

  Else run:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```

</details>


<details>
  <summary>Mozilla Firefox as your default browser</summary>

  &nbsp;


  Run the command:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe
  ```

  If you get an error like `ls: cannot access...` Run the following command:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```

  Else run:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
  <summary>Microsoft Edge as your default browser</summary>

  &nbsp;


  Run the command:


  ```bash
  echo "export BROWSER='\"/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe\"'" >> ~/.zshrc
  ```
</details>


👉 Restart your terminal

Then please make sure that the following command returns "Browser defined 👌":

```bash
[ -z "$BROWSER" ] && echo "ERROR: please define a BROWSER environment variable ⚠️" || echo "Browser defined 👌"
```

If it does not, choose a browser in the list above and execute the corresponding command.


## Installing Ruby (with [rbenv](https://github.com/sstephenson/rbenv))

First, we need to clean up any previous Ruby installation you might have:

```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on. It means `rvm` is not
# on your computer, that's what we want!

rm -rf ~/.rbenv
```

Then in the terminal, run:

```bash
sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
```
```bash
sudo apt clean
```
```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```
```bash
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

**Close your terminal and open it again** (Alt+F4 and restart it). If you get a warning, just **ignore** it from now (Ruby is not installed yet).


Now, you are ready to install the latest ruby version and set it as the default version.

Run this command, it will **take a while (5-10 minutes)**

```bash
rbenv install 2.6.6
```

Once the ruby installation is done, run this command to tell the system
to use the 2.6.6 version by default.

```bash
rbenv global 2.6.6
```

Then **restart** your Terminal again (close it and reopen it).

```bash
ruby -v
```

You should see something starting with `ruby 2.6.6p`. If not, ask a teacher.

## Installing some gems

---

<details>
  <summary>Click here if you are in :cn: <bold>China</bold></summary>


  &nbsp;

  :warning: If you are in China, you should update the way we'll install gem with the following commands.

```bash
# China only!
gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com/
gem sources -l
# *** CURRENT SOURCES ***
# https://gems.ruby-china.com/
# Ruby-china.com must be in the list now
```
</details>

---

All, please run the following line:

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http
```

If you encounter the following error:

`
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
`

Run the following command:
```bash
rm -rf ~/.gemrc
```

Rerun the command to install the gems.

**Never** install a gem with `sudo gem install`! Even if you stumble upon a Stackoverflow answer
(or the Terminal) telling you to do so.


## Node (with [nvm](https://github.com/nvm-sh/nvm))

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | zsh
```

Restart your terminal and run the following:

```bash
nvm -v
```
You should see a version. If not, ask a teacher.

Now let's install node:

```bash
nvm install 14.15.0
```

When the command returns, run

```bash
node -v
```

You should see `v14.15.0`. If not, ask a teacher.


## yarn

Let's install [`yarn`](https://classic.yarnpkg.com/en/docs/install):

```bash
npm install --global yarn
```

Restart your terminal and run the following:

```bash
yarn -v
```

You should see a version. If not, ask a teacher.


## PostgreSQL

In a few weeks, we'll talk about SQL and Databases and you'll need something called PostgreSQL, an open-source robust and production-ready database.

Let's install it now.


```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```
```bash
sudo /etc/init.d/postgresql start
```
```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

You can configure PostgreSQL to autostart, so you don't have to execute `sudo /etc/init.d/postgresql start` each time you open a new terminal:

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```
```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```
```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```


## Check-up

Let's check if you successfully installed everything.

Quit all opened Terminal, open a new one and run the following commands:

```bash
curl -Ls https://raw.githubusercontent.com/lewagon/setup/master/check.rb > _.rb && ruby _.rb || rm _.rb
```

It should tell you if your workstation is ready :) If not, ask a teacher.



## Ubuntu File System

### Exchange files between Windows and Ubuntu

We need an easy way to transfer files from Windows to Ubuntu and vice versa.

In order to do that, we will create shortcuts to Ubuntu directories in the Windows **File Explorer**.

![](images/wsl_ubuntu_file_system.png)

Here are the steps:

- Open an Ubuntu terminal
- Open the Windows File Explorer (or use the shortcut Win + E)
- In the Address Bar, enter `\\wsl$\` (or `\\wsl$\Ubuntu` if it does not work)
- You now have acces to the Ubuntu file system
- Dive into the Ubuntu file system in order to look for directories of interest
- Drag the desired folders into the Address Bar in order to create shortcuts

![](images/wsl_ubuntu_file_system.gif)

### Open the Windows File Explorer from the Ubuntu terminal

Another option to move files around is to open the Windows **File Explorer** from the Ubuntu terminal.

In order to do that:

- Open an Ubuntu terminal
- Go to the directory you wish to explore
- Run the `explorer.exe .` command (alternatively, use `wslview .`)
- If you get an input output error message, run `wsl --shutdown` in a Windows PowerShell and reopen an Ubuntu terminal

![](images/wsl_explorer.png)

### Find your way in the Ubuntu File System

You might want to figure out the exact location of a Windows directory in the Ubuntu file system, or the other way around.

In order to convert a Windows path to and from an Ubuntu path:

- Open an Ubuntu terminal
- Use the `wslpath "C:\Program Files"` command in order to translate a Windows path into an Ubuntu path
- Use the `wslpath -w "/home"` command in order to translate an Ubuntu path into a Windows path
- In particular, the `wslpath -w $(pwd)` command returns the Windows path of the current Ubuntu directory

![](images/wsl_path.png)


## Alumni
:warning: If you have received an email from Le Wagon inviting you to sign up on Kitt (our learning platform), you can safely skip this step. Instead, please follow the instructions in the email you received if you haven't done so already.
If you are unsure about what to do, you can follow [this link](https://kitt.lewagon.com/). If you are already logged in, you can safely skip this section. If you are not logged in, click on `Enter Kitt as a Student`. If you manage to login, you can safely skip this step. Otherwise ask a teacher whether you should have received an email or follow the instructions below.

Register as a Wagon alumni by going to [kitt.lewagon.com/onboarding](http://kitt.lewagon.com/onboarding). Select your batch, sign in with GitHub and enter all your information.

Your teacher will then validate that you are indeed part of the batch. You can ask him to do it as soon as you completed the registration form.

Once the teacher has approved your profile, go to your email inbox. You should have 2 emails:

- One from Slack, inviting you to the Le Wagon Alumni slack community (where you'll chat with your buddies and all the previous alumni). Click on **Join** and fill the information.
- One from GitHub, inviting you to `lewagon` team. **Accept it** otherwise you won't be able to access the lecture slides.


## Slack

Download and install the Slack app from [slack.com](https://slack.com/downloads/windows).

Launch the app and sign in to `lewagon-alumni` organization.

Make sure you upload a picture there.

You can also sign in to Slack on your iPhone or Android device!

The idea is that you'll have Slack open all day, so that you can share useful links / ask for help / decide where to go to lunch / etc.

In case of remote tickets, you will use Slack audio or video call to get help. To ensure that everything is working fine, launch the Slack app on your Laptop, then [follow this procedure](https://slack.com/intl/en-gb/help/articles/115003538426-Troubleshoot-Slack-Calls#run-our-calls-test) (tl;dr type `/call --test` then the `Enter` key in any channel).

After the test are finished, you should have green "All clear" messages at least for your microphone and camera. If not, ask a teacher.
![](images/slack_mic_cam_all_green.png)


