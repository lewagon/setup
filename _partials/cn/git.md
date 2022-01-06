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
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh
```

运行以下的命令，来检查`gh`是否成功安装了：

```bash
gh --version
```

如果这行命令没有提示`gh version X.Y.Z (YYYY-MM-DD)`，且版本（version）大于等于1.4 ，请参考[这个文档](https://github.com/cli/cli/blob/trunk/docs/install_linux.md#official-sources)：这里面有故障排查的方法。如果有困惑，问问老师。
