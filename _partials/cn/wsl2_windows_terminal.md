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

