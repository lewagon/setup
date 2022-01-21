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