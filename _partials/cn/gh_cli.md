## GitHub CLI

CLI是[Command-line Interface（命令行界面）](https://baike.baidu.com/item/%E5%91%BD%E4%BB%A4%E8%A1%8C%E7%95%8C%E9%9D%A2/9910197?fr=aladdin)的首字母缩写。

在这一章节里面，我们会安装[GitHub CLI](https://cli.github.com/)。这样我们就可以直接在终端和Github互动。

你之前执行的命令应该已经安装了GitHub CLI。

首先你需要**登陆**。复制粘贴下面的命令到终端，敲击回车：

:warning: **不要更改下面指令中的`email`**

```bash
gh auth login -s 'user:email' -w --git-protocol ssh
```

`gh`会问你几个问题：

- `Generate a new SSH key to add to your GitHub account?（生成新的SSH密钥，然后添加到Github账号上？）` 敲击回车，让gh帮你生成。

  如果你以前生成过SSH密钥，那你就会看到这个问题`Upload your SSH public key to your GitHub account?（上传公共密钥到Github账户上上吗？）` 上下移动箭头`>`，让它停在你想选的SSH公钥前面，然后敲击回车。

- `Enter a passphrase for your new SSH key (Optional)（输入新的SSH密钥的密码（非必填））`. 输入一个密码，然后写下来或者记住它。这是保护你本地私钥的密码。然后敲击回车。

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
