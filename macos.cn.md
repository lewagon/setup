# 电脑设置教程

以下的教程将会帮助你为接下来在[Le Wagon Web Development course](https://www.lewagon.com/web-development-course/full-time)全栈开发训练营中做好准备：

请**仔细阅读并按顺序执行指令**。如果你在哪一步卡住了，不用犹豫，可以举手咨询老师:raising_hand:

让我们开始吧 :rocket:

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


## Apple M1芯片

如果你是在2020下半年买的电脑，它更有可能是Apple Silicon而不是Intel处理器。让我们来查看查看...

你可以从Applications > Utilities或者在[Spotlight](https://support.apple.com/en-gb/HT204014)里面搜索：

![macOS打开终端](images/macos_open_terminal.png)

复制粘贴以下的指令到终端里并按`Enter`来执行这段指令。

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lewagon/setup/master/utils/macos_list_processor_type.sh)"
```

☝️执行完这段代码之后将会表明你的电脑是否使用的是Apple Silicon。

如果你的电脑使用的是Apple Silicon，展开下面的段落并进行阅读。如果不是的话，请忽略它。

<details>
  <summary>👉&nbsp;&nbsp;Setup for Apple Silicon 👈</summary>


### 卸载Homebrew

我们需要卸载Homebrew以防本地已经安装了一个版本。

在终端中执行以下代码:

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

如果brew如果没有被安装，你将会得到以下消息`brew: command not found!`

### 为Rosetta配置终端

打开访达Finder（或者在[Spotlight](https://support.apple.com/en-gb/HT204014)里搜索它)。

前往Applications > Utilities.

复制终端应用(选择它, 然后`Cmd` + `C`, `Cmd` + `V`)，并将它的复制重命名为Terminal Rosetta。

在Terminal Rosetta软件上按`Cmd` + `I`, 然后勾选”使用Rosetta打开（Open using Rosetta）“.

⚠️ 从此以后在训练营中，每当你需要打开终端的时候，你将需要打开**Terminal Rosetta**应用。

</details>


## 一个有关在mac上跳出应用程序的小贴士

在mac上点击应用程序窗口左上方的小红叉**并不是真正的退出了它**，他只是关闭了一个活跃窗口。如果想要 _真正_ 的退出应用程序，你需要在应用活跃的时候按`Cmd + Q`，或者在你的菜单栏里前往`APP_NAME` -> 点击`Quit`

![macOS退出终端程序](images/macos_quit.png)

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

![macOS安装xcode-select](images/macos_xcode_select_install.png)

:heavy_check_mark: 当你看到"The software was installed"这条消息的时候，你就可以继续下一步了 :+1:

:x: 如果`xcode-select --install` 指令失败了，再重新试着运行一次：有时候Apple服务器会过载。

:x: 如果你看到"Xcode is not currently available from the Software Update server",你就需要更新你的软件系统：

```bash
sudo softwareupdate --clear-catalog
```

这个执行结束之后，你可以尝试再一次安装（复制粘贴以下指令并按下Enter）。


## Homebrew

[Homebrew](http://brew.sh/)，一个包管理工具：这是一个帮助你在命令行中安装其他软件的软件。让我们一起安装它！

想要安装，你需要打开终端并执行：

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

这将会询问你的确认（按下`Enter`）并输入你的**macOS用户账户密码**（那个当你重启你Macbook时，用来[登入](https://support.apple.com/en-gb/HT202860) 的密码）。

:warning: 当你输入你的密码的时候，屏幕上不会有任何的显示，**这是正常的**。这是一个安全保护的设置，来隐藏你整个密码，包括它的长度。你可以放心的输入你的密码，结束后按下`ENTER`就可以了。

如果你已经有了Homebrew,终端会告诉你的。那么一切正常，你可以继续接下来的步骤。

接下来，让我们安装一些有用的软件：

```bash
brew update
```

如果你得到了`/usr/local must be writable`的报错，直接运行以下指令：

```bash
sudo chown -R $USER:admin /usr/local
brew update
```

无论是否有这行报错，继续执行下方的指令（你可以一次性直接复制/粘贴下方所有行）

```bash
brew upgrade git         || brew install git
brew upgrade gh          || brew install gh
brew upgrade wget        || brew install wget
brew upgrade imagemagick || brew install imagemagick
brew upgrade jq          || brew install jq
brew upgrade openssl     || brew install openssl
```


## Visual Studio Code (VS Code)

### 安装

让我们一起安装[Visual Studio Code](https://code.visualstudio.com)代码编辑器。 

复制(`CMD` + `C`)下面的指令，并粘贴(`CMD` + `V`)到终端Terminal里:

```bash
brew install --cask visual-studio-code
```

然后在终端使用下方指令启动VS Code:

```bash
code
```

:heavy_check_mark: 如果一个VS Code窗口被打开，那么你就准备好继续下一步了:+1:

:x: 如果没有成功打开的话，**请联系你的老师**






## macOS Terminal Theme

在Mac上，打开`Terminal > Preferences`并在`Profiles`中将“Pro”主题设置为默认。

![为macOS终端设置Pro主题](images/macos_terminal_pro.png)

**退出**并重启终端。它现在会有一个好看的黑色背景，对眼睛会更友好。


## Oh-my-zsh

让我们一起安装`zsh`插件[Oh My Zsh](https://ohmyz.sh/).

在终端terminal里执行以下指令：

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

如果终端里出现询问"Do you want to change your default shell to zsh?", 可以输入`Y`

在你的终端的最后，你会看到以下内容:

![带有OhMyZsh的Ubuntu终端](images/oh_my_zsh.png)

:heavy_check_mark: 如果你的终端成功显示了上面，你就可以继续下一步了:+1:

:x: 如果安装失败的话，请询问**你的老师**


## GitHub CLI

CLI是[Command-line Interface（命令行界面）](https://baike.baidu.com/item/%E5%91%BD%E4%BB%A4%E8%A1%8C%E7%95%8C%E9%9D%A2/9910197?fr=aladdin)的首字母缩写。

在这一章节里面，我们会安装[GitHub CLI](https://cli.github.com/)。这样我们就可以从终端链接GitHub的数据，执行一些有用的动作。

之前执行的命令应该已经安装了GitHub CLI。

首先你需要**登陆**。复制下面的命令（**不要**更改它），然后复制到终端，敲击回车：

:warning: **不要更改下面指令中的`email`**

```bash
gh auth login -s 'user:email' -w
```

你会看到下面的输出结果：

```bash
- Logging into github.com
! First copy your one-time code: 0EF9-D015
- Press Enter to open github.com in your browser...
```

复制那段验证码（code）(在上面的例子中是`0EF9-D015` ），然后敲击`Enter`。

你的浏览器就会打开一个页面让你授权GitHub CLI使用你的GitHub账号。同意，并等待一会儿。

回到终端，再次敲击`回车`，然后就应该好啦:tada:

检查一下你有没有链接好：

```bash
gh auth status
```

如果你看到`Logged in to github.com as <你的GitHub用户名> `，那就可以了。

:x: 如果没有，**问问老师**。

然后运行下面的配置命令:

```bash
gh config set git_protocol ssh
```

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

因为你的配置是私人的，所以你需要保存在**自己**的代码库里（repository/repo）。

Fork的意思是：在你的GitHub账号上建一个新的代码库，和原始的那一个是一模一样的（可以想象成你在复制粘贴这个代码库）。这样，你在你的GitHub上就会有一个新的代码库： `$GITHUB_USERNAME/dotfiles`。我们需要fork，因为每个人都需要在那些文件里加上一些**特定**信息（比如你的名字）。

打开终端，运行下面的命令：

```bash
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo $GITHUB_USERNAME
```

:heavy_check_mark: 你应该能看到你的GitHub用户名在终端里显示出来了。

:x: 如果没有的话，现在就**停下**，找老师帮忙。看起来之前的步骤(`gh auth`)有一些问题。

现在就可以fork代码库（repo)，然后克隆到你自己的电脑上了：

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
gh repo fork lewagon/dotfiles --clone
```

### Dotfiles安装器

运行`dotfiles`安装器：

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh install.sh
```

用下面的命令检查一下你GitHub账号录入的电子邮箱。你需要在其中选一个（如果你有好几个的话），然后再进入下一个步骤：

```bash
gh api user/emails | jq -r '.[].email'
```

:heavy_check_mark: 如果你看到了你的注册邮箱列表，你就可以继续下一步啦:+1:

:x: 如果没有的话，请在运行上面:point_up: 这个指令之前，[重新授权GitHub](https://github.com/lewagon/setup/blob/master/macos.cn.md#github-cli)。

### git安装器

运行git安装器：

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: 这会**提示**填写你的全名（`FirstName LastName`）和你的邮箱。

:warning: 注意啦，你**需要**填`gh api ...`命令列出的其中一个电子邮箱。不然，Kitt就没办法跟进你的学习进程。

现在**退出**你刚打开的所有终端窗口。


## rbenv

让我们来安装[rbenv](https://github.com/sstephenson/rbenv)，一个帮助我们安装并管理`ruby`环境的软件。

首先，我们需要先清理我们之前可能安装过的Ruby:

```bash
rvm implode && sudo rm -rf ~/.rvm
# 如果出现"zsh: command not found: rvm"报错, 继续后续的步骤. 这是指你的电脑上没有安装`rvm`
# 这是我们想要的！

sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

:warning: 这条指令会需要你输入你的密码。

:warning: 当你输入你的密码的时候，屏幕上不会有任何的显示，**这是正常的**。这是一个安全保护的设置，来隐藏你整个密码，包括它的长度。你可以放心的输入你的密码，结束后按下`ENTER`就可以了。

然后在终端里输入并运行：

```bash
brew uninstall --force rbenv ruby-build
```

然后退出**所有你打开着的终端窗口**（`Cmd` + `Q`)并重启新的一个。然后运行：

```bash
brew install rbenv
```

## Ruby

### 安装

现在，你已经准备好了去安装最新[ruby](https://www.ruby-lang.org/en/)版本并把它设置为默认版本。

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

:heavy_check_mark: 如果你有看到`ruby 2.7.4p`，那么你可以继续下一步+1:

:x: 如果没有的话，**询问一下老师**。

### 安装一些gems

<details>
  <summary>点击这里，如果你在 :cn: <bold>中国</bold>的话</summary>

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

在ruby的世界里，我们将外部的库称之为`gems`：他们是一些你可以下载并在你的电脑上运行的ruby代码。让我们一起安装一些!

在你的终端里，复制粘贴下面的指令：

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http
```

:heavy_check_mark: 如果你看到 `xx gems installed`，那么一切正常 :+1:

:x: 如果你遇到了以下的报错：

```bash
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
```

运行以下的指令：

```bash
rm -rf ~/.gemrc
```

然后，重新运行安装gems的指令。

:warning: **永远不要**使用`sudo gem install`来安装一个gem！即使你偶然发现了一个网络上的答案（或者终端提示）叫你这么做。


## Node.js

[Node.js](https://nodejs.org/en/)是一个JavaScript运行环境以在终端运行JavaScript代码。让我们一起用[nvm](https://github.com/nvm-sh/nvm)，一个Node.js的版本管理器，来安装Node.js。

在终端里，运行以下指令：

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | zsh
```

重启你的终端并执行下方指令：

```bash
nvm -v
```

你应该会看到你的nvm的版本。如果没有的话，问一下你的老师。

现在，让我们来安装node：

```bash
nvm install 14.15
```

当这个指令执行结束之后，运行：

```bash
node -v
```

:heavy_check_mark: 如果看到`v14.15.0`，那么你安装成功了:+1:。

:x: 如果没有的话，**问一下你的老师**。


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

让我们现在一起安装它。

运行下方指令：

```bash
brew install postgresql
brew services start postgresql
```

当你结束了上方的指令之后，让我们一起来核查一下它是否安装成功了：

```bash
psql -d postgres
```

如果你进入到了一个像下方这个，一个新的输入框的话，那么说明你的PostgreSQL已经安装好啦！

```bash
psql (13.3)
Type "help" for help.

postgres=#
```

如果想要退出它的话，输入`\q`然后按下`Enter`。


## 最后检查

让我们来看看你是否已经成功安装好了所有软件。

退出所有的终端，打开一个新的终端窗口并运行下方指令：

```bash
curl -Ls https://web-dev-challenge-lewagon-image.oss-cn-shanghai.aliyuncs.com/setup/check.rb > _.rb && ruby _.rb || rm _.rb
```

:check_mark: 如果出现了一个绿色的`Awesome! Your computer is now ready!`，那么你的工作台已经设置好了 :+1:

如果没有的话，问一下你的老师。


## Kitt

:warning: 如果你已经收到了一封来自Le Wagon邀请你去注册Kitt(我们的学习平台)的邮件并且你也注册完成了的话，你可以安全的跳过这一章节。如果你还没有注册完成的话，请跟随邮件里的教程，完成注册。

如果你不确定你要做什么，可以查看[这个链接](https://kitt.lewagon.com/)。如果你已经登录了的话，你可以跳过这个章节。如果你没有登录的话，你需要点击`Enter Kitt as a Student`。如果你可以成功的登录，你也可以安全的跳过这一步。不然的话，你可以询问一下老师你是否有收到过相关的邮件，或者直接跟着执行下面的教程。

前往[kitt.lewagon.com/onboarding](http://kitt.lewagon.com/onboarding)，注册成为Le Wagon的一名校友。选择你的batch，用gitHub账户登录并填写你的信息。

你的老师将会验证你的确属于这个batch。你可以在完成了注册表单后去询问老师去做验证。

当你的老师验证成功后，请前往你的邮箱收件箱。你应该会有两封邮件：

- 一封来自Slack,邀请你加入Le Wagon Alumni Slack社群（在这儿你可以与你的伙伴和所有之前的学员交流）。点击**Join**并填写相应的个人信息。

- 一封来自GitHub,要求你加入`lewagon`团队。**接受它**，不然的话你将没有办法看到有关讲座和课程的文件。


## Slack

[Slack](https://slack.com/)是一个在技术领域里非常流行的一个交流平台。

### 安装

[下载Slack应用程序](https://itunes.apple.com/fr/app/slack/id803453959?mt=12)并安装它。

:warning: 如果你已经在你的浏览器里使用Slack了，请还是下载并安装功能更全面的**Slack桌面应用程序**。

### 设置

打开Slack应用程序并登入`lewagon-alumni`组织。

确保你已经**上传了你的头像照片** :point_down:

![如何上传一张头像照片](images/slack_profile_picture.gif)

之后你可以全天开着Slack，这样你可以在上面分享有用的链接/寻求帮助/决定去那儿吃饭/...

为了确保视频电话可以正常工作，让我们一起测试摄像头和麦克风：
- 打开Slack应用程序
- 在任意群组的消息编辑框里输入`/call --test`并按下`ENTER`
- 按下"Start test"绿色按钮

![在Slack检查麦克风和摄像头](images/slack_call_test.png)

:heavy_check_mark: 当测试结束以后，你应该会看到你的摄像头和麦克风有绿色的"Succeed"信息。:+1:

:x: 如果测试失败的话，**请联系你的老师**.

你也可以在手机上安装Slack应用并登入`lewagon-alumni`!


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

![如何在macOS中将应用程序固定在Dock上](images/macos_dock.png)

你一定要固定以下应用程序:
- 你的终端
- 你的文件资源管理器
- VS Code
- 你的浏览器
- Slack
- Zoom


## 设置完成啦!

现在你的电脑已经完成[Le Wagon网页开发课程](https://www.lewagon.com/web-development-course/full-time)的设置啦 :muscle: :clap:

享受你的编程之旅，你会掌握它的！ :rocket:


