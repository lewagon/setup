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


- 复制出现在`ssh`的内容（公钥）粘贴到你邮箱地址的末尾
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

&nbsp;&nbsp;&nbsp; :heavy_check_mark: 如果你看到这条信息，那说明密钥已经被成功加上了！

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
