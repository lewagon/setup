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
