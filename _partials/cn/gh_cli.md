## GitHub CLI

CLI是[Command-line Interface（命令行界面）](https://baike.baidu.com/item/%E5%91%BD%E4%BB%A4%E8%A1%8C%E7%95%8C%E9%9D%A2/9910197?fr=aladdin)的首字母缩写。

在这一章节里面，我们会安装[GitHub CLI](https://cli.github.com/)。这样我们就可以直接在终端和Github互动。

你之前执行的命令应该已经安装了GitHub CLI。

首先你需要**登陆**。复制粘贴下面的命令到终端，敲击回车：

:warning: **不要更改下面指令中的`email`** — 尽管`user:email`看起来像是你真实邮件地址的占位符，但实际上并不是——请不要替换它。

```bash
gh auth login -s 'user:email' -w --git-protocol ssh
```

`gh`会问你几个问题：

- `Generate a new SSH key to add to your GitHub account?（生成新的SSH密钥，然后添加到Github账号上？）` 敲击回车，让gh帮你生成。

  如果你以前生成过SSH密钥，那你就会看到这个问题`Upload your SSH public key to your GitHub account?（上传公共密钥到Github账户上上吗？）` 上下移动箭头`>`，让它停在你想选的SSH公钥前面，然后敲击回车。

- `Enter a passphrase for your new SSH key (Optional)（输入新的SSH密钥的密码（非必填））`:
  - **对大多数学生来说：** 直接按下`Enter`跳过即可。训练营中不需要密码，而且每次使用密钥时都会提示你输入。不过有一个风险，如果有人偷了你的电脑，他们就可以向GitHub推送代码。
  - **如果安全对你来说非常重要：** 输入一个你选择的密码，然后按`Enter`。_非常_ 重要的是，如果你输入了密码，请立即把它记在某个地方，不要丢失或遗忘。你会经常需要输入它。

- `Title for your SSH key`。你可以把它留在建议的 "GitHub CLI"，按`Enter`。

然后你会看到下面的文字输出：

```bash
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
