## PostgreSQL

几周之后，我们会学习SQL和数据库。你将会需要一个叫做PostgreSQL的东西，一个开源的可用于生产环境的强大数据库。让我们现在一起安装它。

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
psql (12.5)
Type "help" for help.

postgres=#
```

如果想要退出它的话，输入`\q`然后按下`Enter`。
