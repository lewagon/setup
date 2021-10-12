# 电脑设置教程

以下的教程将会帮助你为接下来在[Le Wagon](http://www.lewagon.org) 全栈开发训练营中做好准备：

- 获取一个文本编辑器，这里将会是你日日夜夜花时间的地方
- 安装一个软件包管理器
- 装扮你的终端
- 配置git和GitHub
- 安装Ruby


## Zoom

为了让我们能够线上的交流，我们将会使用[Zoom](https://zoom.us/)，一个视频会议工具。


:warning: 如果你已经安装了Zoom，请确保它的版本至少是**5.6**。

- 打开[https://zoom.us/download](https://zoom.us/download)
- 在**Zoom会议客户端（Zoom Client）**下方点击**下载（Download）**按钮
- 打开你刚刚下载的文件并安装应用程序

![Zoom主页面](images/zoom_home_screen.png)

你现在可以关闭Zoom程序了。

## GitHub账户

你有注册好GitHub账户嘛？如果还没有，[现在注册](https://github.com/join)。

:point_right: **[上传一张照片](https://github.com/settings/profile)** 并在你的GitHub账户中设置你的名称。这一步很重要，因为我们将使用一个带有你头像的内部dashboard。请**现在**立即做这一步，然后再去继续下面的步骤。

![](images/github_upload_picture.png)


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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 如果窗口里的前几个词就是**Windows 10**的话，你可以直接到下一步了！ :muscle:


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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 如果你看到有可以更新的版本，请安装它然后重复以上步骤直到电脑提示你所有的东西都是最新版本了。


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

### Windows版本要求

有些我们需要的工具已经在Windows 10的`1903`或**之后**的版本中发布了。所以请保证你最少要这个版本！


- 按下 `Windows` + `R`
- 输入  `winver`
- 按下 `Enter`


检查**版本号**:


&nbsp;&nbsp;&nbsp; :x: 如果低于`1903`, 你可以根据上面[最新的Windows版本](#Latest-version-of-Windows)的部分来安装更新。

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 如果你是`1903`或以上的版本, 你就可以继续下一步了！ :sunglasses:


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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 如果被激活了的话，那在图表下方会显示状态 "Virtualization: Enabled"。


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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 等到上面三组命令都执行完毕，并且没有报错后，重启电脑。


### 升级到WSL 2
等你的电脑重启好，你就可以下载WSL2安装包。


- 打开[下载页面](https://aka.ms/wsl2kernel)，下载安装包（installer）
- 点击`Next`（下一步）
- 点击`Finish`（完成）

![update_wsl](images/update_wsl.jpg)

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果出现了这个错误：`This update only applies to machines with the Windows Subsystem for Linux`, 那就在软件上**右击**，然后选择`uninstall`(卸载); 然后你就可以正常地安装。

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 如果没有错误提示的话，那你现在就可以使用WSL 2了！

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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 你可以关掉这个弹出的终端；现在我们就可以安装Ubuntu了！

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


&nbsp;&nbsp;&nbsp; :heavy_check_mark: 安装应该都完成了。现在你可以选择Ubuntu窗口了！

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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 如果Ubuntu WSL版本是2，你就可以安装VS Code了！


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

  &nbsp;&nbsp;&nbsp; :heavy_check_mark: 几秒之后，你应该会收到这条转换完成的信息：`The conversion is complete`.

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

### 链接VS Code和Ubuntu

- 首次启动VS Code之后:
    - 把它加在你的任务栏上；你会经常用到它！
    - 在VS Code的右下角，应该有一个框框提示你它检测到了WSL
    - 接受VS Code WSL插件的安装

:warning: 要用VS Code，这个插件必须要安装！


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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 好咯, 你的**Windows终端**就设置好了！:confetti_ball:
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


## zsh

Instead of using the default `bash` [shell](https://en.wikipedia.org/wiki/Shell_(computing)), we will use `zsh`.

In a terminal execute the following command and type in your password if asked:

```bash
sudo apt install -y zsh curl vim imagemagick jq
```


## Oh-my-zsh

让我们一起安装`zsh`插件[Oh My Zsh](https://ohmyz.sh/).

在终端terminal里执行以下指令：

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

如果终端里出现询问"Do you want to change your default shell to zsh?", 可以输入`Y`

在你的终端的最后，你会看到以下内容:

![Ubuntu terminal with OhMyZsh](images/oh_my_zsh.png)

:heavy_check_mark: 如果你的终端成功显示了上面，你就可以继续下一步了:+1:

:x: 如果安装失败的话，请询问**你的老师**


## 把你的默认浏览器链接到Ubuntu
为了保证你可以在Ubuntu终端和浏览器进行交互，你需要设置你的默认浏览器。

⚠️ 你需要执行下面的至少一组命令：You need to execute at least one of the following commands below:


<details>
  <summary>用Google Chrome作为默认浏览器</summary>

  &nbsp;


  运行下面的命令:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
  ```

  如果你看到了错误信息，比如`ls: cannot access...` 那就运行下面的命令：

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```

  如果没有错误信息，就运行下面这一行:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```

</details>


<details>
  <summary>用Mozilla Firefox作为默认浏览器</summary>

  &nbsp;


  运行下面的命令:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe
  ```

  如果你看到了错误信息，比如`ls: cannot access...` 那就运行下面的命令：

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```

  如果没有错误信息，就运行下面这一行:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
  <summary>用Microsoft Edge作为默认浏览器</summary>

  &nbsp;


  运行下面的命令:


  ```bash
  echo "export BROWSER='\"/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe\"'" >> ~/.zshrc
  ```
</details>


👉 重启你的终端

然后请保证下面这行命令会返回"Browser defined 👌"这句话：

```bash
[ -z "$BROWSER" ] && echo "ERROR: please define a BROWSER environment variable ⚠️" || echo "Browser defined 👌"
```

如果没有返回这句话，那在上面的列表中选一个浏览器，然后运行对应的命令。



## GitHub CLI

CLI是[Command-line Interface（命令行界面）](https://baike.baidu.com/item/%E5%91%BD%E4%BB%A4%E8%A1%8C%E7%95%8C%E9%9D%A2/9910197?fr=aladdin)的首字母缩写。

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


## GitHub

我们需要生成SSH密钥。这些会在GitHub和Heroku上使用。把它当成一种登陆的方式好了，但它和平时用的用户名和密码不一样。如果你之前有生成过密钥，你就可以跳过这个步骤。

打开终端，然后输入下面的命令，把email换成**你自己的**（应该用你注册GitHub的email）。然后它会提示你一些信息。按回车键，直到它问你要**密码**。

```bash
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
```

**敲黑板：** 当它问你要密码时，输入你想要的密码（并且是你可以记住的密码）。这个密码会保护你保存在硬盘上的私钥。你输入的时候，还是不会在屏幕上看到任何东西，这是**正常的！**输入密码，当你输完的时候，按下回车。

然后你需要把**公钥**存到GitHub上。运行下面的命令：

```bash
gh auth refresh -s write:public_key
```

它会在屏幕上提示一次性代码(####-####). 复制后按“ENTER”，然后将代码粘贴到浏览器中，然后按照说明对 GitHub 进行授权.

回到终端，按“ENTER”并运行:

```bash
gh ssh-key add ~/.ssh/id_ed25519.pub
```
这应该返回 `✓ Public key added to your account` . 如果没有，请不要犹豫**与老师联系.**


## Dotfiles (标准配置)

黑客很喜欢把他们的shell和工具变得很酷炫。

让我们用Le Wagon提供的一个超棒的默认配置文件来开始吧：[`lewagon/dotfiles`](http://github.com/lewagon/dotfiles).

因为你的配置是私人的，所以你需要保存在**自己**的代码库里（repository/repo）。Fork的意思是：在你的GitHub账号上建一个新的代码库，和原始的那一个是一模一样的（可以想象成你在复制粘贴这个代码库）。
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


### Sublime Text 自动配置

打开一个新的终端并输入：

```bash
cd ~/code
stt
```

它将会**在Sublime Text中打开当前文件夹**。这是我们如何使用它的方法。

**关闭Sublime Text**并重新打开它：

```bash
stt
```

**等待一分钟**，等所有额外的软件包都自动安装好（会自动打开一个带有文本的新的窗口，上面会包含每个你安装好的新包的文档）。如果想要跟踪软件包的安装进度，你可以前往`View > Show console`。

如果想要核查是否所有的插件都安装好了，你可以打开`命令面板 Command Palette`(在OSX上，按下`⌘` + `⇧` + `P`；在linux上，按下`Ctrl` + `⇧` + `P`)，输入`Packlist`然后按`Enter`，你应该会看到有一些软件包被安装了（像是[Emmet](http://emmet.io/)）。

当这些结束之后，你可以关闭Sublime Text。


每次跟远程的代码库交流的时候都问你要密码是件很烦的事。所以呀，你需要给`oh my zsh`加上一个`ssh-agent`插件：


- 找到`plugins=`开始的这一行
- 在插件（plugin）列表里加上`ssh-agent`

这个列表现在看起来应该是这样的：

```
plugins=(gitfast last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search ssh-agent)
```

:heavy_check_mark: 按下`Ctrl` + `S` 保存`.zshrc`文件，然后关掉Visual Code Studio。


## rbenv

让我们安装[`rbenv`](https://github.com/sstephenson/rbenv)，一个帮助我们安装和管理`ruby`环境的软件。

首先，我们需要清理你可能已经安装过的Ruby:

```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on.
# It means `rvm` is not on your computer, that's what we want!
rm -rf ~/.rbenv
```

然后在终端里运行:

```bash
sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
```

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

```bash
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

**关闭你的终端并重新打开它**

如果你收到了一个警告，就请先**忽略**它（Ruby还没有安装好）。


现在，你已经准备好了去安装最新Ruby版本并把它设置为默认版本。

运行下方这个指令，它会**花费一些时间（5-10分钟）**

```bash
rbenv install 2.7.4
```

当Ruby安装好后，运行下面这个指令来告诉系统使用2.7.4这个版本作为默认版本。

```bash
rbenv global 2.7.4
```

然后再次**重启**你的终端（关掉并重新打开它）。

```bash
ruby -v
```

你应该会看到`ruby 2.7.4p`。如果没有的话，询问一下老师。

## 安装一些gems

---

<details>
  <summary>点击这里，如果你在 :cn: <bold>中国</bold>的话</summary>


  &nbsp;

  :warning: 如果你在中国的话，你应该使用以下命令来安装gem。

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

无论你是不是在中国，请都运行下面的指令：

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http
```

如果你遇到了以下的报错：

`
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
`

运行以下的指令：

```bash
rm -rf ~/.gemrc
```

然后，重新运行安装gems的指令。

**永远不要**使用`sudo gem install`来安装一个gem！即使你偶然发现了一个网络上的答案（或者终端提示）叫你这么做。


## Node (使用[nvm](https://github.com/nvm-sh/nvm))

```bash
curl -o- https://web-dev-challenge-lewagon-image.oss-cn-shanghai.aliyuncs.com/setup/install_nvm.sh | zsh
```

重启你的终端并执行下方指令：

```bash
nvm -v
```

你应该会看到你的nvm的版本。如果没有的话，问一下你的老师。

现在，让我们来安装node：

```bash
nvm install 14.15.0
```

当这个指令执行结束之后，运行：

```bash
node -v
```

你应该会看到`v14.15.0`。如果没有的话，问一下你的老师。


## yarn

让我们一起来安装[`yarn`](https://classic.yarnpkg.com/en/docs/install):

```bash
npm install --global yarn
```

重启终端并运行：

```bash
yarn -v
```

你应该会看到你yarn的版本。如果没有的话，问一下你的老师。


## PostgreSQL

几周之后，我们会学习SQL和数据库。你将会需要一个叫做PostgreSQL的东西，一个开源的可用于生产环境的强大数据库。

让我们现在安装它。


```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```
```bash
sudo /etc/init.d/postgresql start
```
```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

你可以把PostgreSQL配置成自动启动，这样每次你打开新的终端时，你就不需要执行`sudo /etc/init.d/postgresql start`：

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```
```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```
```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```


## 最后检查

让我们来看看你是否已经成功安装好了所有软件。

退出所有的终端，打开一个新的终端窗口并运行下方指令：

```bash
curl -Ls https://web-dev-challenge-lewagon-image.oss-cn-shanghai.aliyuncs.com/setup/check.rb > _.rb && ruby _.rb || rm _.rb
```

它应该会告诉你，你的工作台是否已经正确的设置好了 ：）如果没有的话，问一下你的老师。


## 校友
:warning: 如果你已经收到了一封来自Le Wagon邀请你去注册Kitt(我们的学习平台)的邮件并且你也注册完成了的话，你可以安全的跳过这一章节。如果你还没有注册完成的话，请跟随邮件里的教程，完成注册。

如果你不确定你要做什么，可以查看[这个链接](https://kitt.lewagon.com/)。如果你已经登录了的话，你可以跳过这个章节。如果你没有登录的话，你需要点击`Enter Kitt as a Student`。如果你可以成功的登录，你也可以安全的跳过这一步。不然的话，你可以询问一下老师你是否有收到过相关的邮件，或者直接跟着执行下面的教程。

前往[kitt.lewagon.com/onboarding](http://kitt.lewagon.com/onboarding)，注册成为Le Wagon的一名校友。选择你的batch，用gitHub账户登录并填写你的信息。

你的老师将会验证你的确属于这个batch。你可以在完成了注册表单后去询问老师去做验证。

当你的老师验证成功后，请前往你的邮箱收件箱。你应该会有两封邮件：

- 一封来自Slack,邀请你加入Le Wagon Alumni Slack社群（在这儿你可以与你的伙伴和所有之前的学员交流）。点击**Join**并填写相应的个人信息。

- 一封来自GitHub,要求你加入`lewagon`团队。**接受它**，不然的话你将没有办法看到有关讲座和课程的文件。


## Slack

从[slack.com](https://slack.com/downloads/windows)上下载Slack的本地应用。

启动程序并注册进入`lewagon-alumni`的组织。

确保你在上面上传了照片。

你也可以在你的iPhone或者Android设备上登录Slack!

这么做的意义是，你可以一直开着Slack，于是你就可以分享有用的链接/寻求帮助/决定哪儿里吃饭/等等。

至于远程的ticket，你将可以用Slack语音或者视频电话来获取帮助。为了确保所有都可以正常工作，在你的电脑上启动Slack应用程序，然后[跟着这里的步骤](https://slack.com/intl/en-gb/help/articles/115003538426-Troubleshoot-Slack-Calls#run-our-calls-test)（tl;dr 输入`/call --test`然后在任何的channel里按下`Enter`键）。

等测试结束之后，你应该至少会在麦克风和相机处，看到绿色“All clear”消息。如果没有的话，问一下你的老师。

![](images/slack_mic_cam_all_green.png)


### 设置Slack

Launch the app and sign in to `lewagon-alumni` organization.

Make sure you **upload a profile picture** :point_down:

![How to upload a profile picture on Slack](images/slack_profile_picture.gif)

The idea is that you'll have Slack open all day, so that you can share useful links / ask for help / decide where to go to lunch / etc.

To ensure that everything is working fine for video calls, let's test your camera and microphone:
- Open the Slack app
- In any channel message bar type `/call --test` and press `ENTER`
- Click on the "Start test" green button

![Check microphone and webcam with Slack](images/slack_call_test.png)

:heavy_check_mark: When the test is finished, you should see green "Succeed" messages at least for your microphone and camera. :+1:

:x: If not, **contact a teacher**.

You can also install Slack app on your phone and sign in `lewagon-alumni`!


## Ubuntu文件系统

### 在Windows和Ubuntu之间交换文件

我们需要一个简单的方法在Windows和Ubuntu之间交换文件。

想这样的话，你需要建一些可以从Windows的**File Explorer**访问Ubuntu文件目录的快捷键。

![](images/wsl_ubuntu_file_system.png)

你需要做下面这些步骤:

- 打开Ubuntu终端
- 打开Windows File Explorer (或者使用快捷键Win + E)
- 在地址栏，输入`\\wsl$\`（如果不行的话，就输入`\\wsl$\Ubuntu`）
- 现在你就有Ubuntu文件系统的访问权限了
- 看一下Ubuntu的文件系统，看看有哪些目录是你会想用的
- 拖拽想要的文件夹到地址栏，就可以创建快捷键了

![](images/wsl_ubuntu_file_system.gif)

### 从Ubuntu终端打开Windows File Explorer

另一个交换文件的方法是从Ubuntu终端打开Windows**File Explorer**。

你需要做下面这些步骤：

- 打开Ubuntu终端
- 进入你想看的目录
- 运行`explorer.exe .`命令（或者，使用`wslview .`）
- 如果你看到一条输入输出的报错，那就在Windows PowerShell运行`wsl --shutdown`然后再重新打开Ubuntu终端

![](images/wsl_explorer.png)

### 在Ubuntu文件系统里找到方向

你可能想搞清楚Ubuntu文件系统里的Windows目录到底在哪儿。或者Windows文件系统里的Ubuntu目录在哪儿。

要把一个Windows路径变成Ubuntu路径（或者反过来），你需要做：

- 打开Ubuntu终端
- 使用`wslpath "C:\Program Files"`命令来把Windows路径变成Ubuntu路径
- 使用`wslpath -w "/home"`命令来把Ubuntu路径变成Windows路径
- 还有，`wslpath -w $(pwd)`命令会返回当前Ubuntu路径的Windows路径

![](images/wsl_path.png)



## 设置完成啦!

现在你的电脑已经完成[Le Wagon网页开发课程](https://www.lewagon.com/web-development-course/full-time)的设置啦 :muscle: :clap:

享受你的编程之旅，你会掌握它的！ :rocket:


