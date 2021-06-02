## Oh-my-zsh - 把终端变得好看！

我们会用一个叫`zsh`的shell来代替默认的`bash`。

```bash
# 它会问你会话的密码
sudo apt install -y zsh curl vim imagemagick jq
```
```bash
sh -c "$(curl -fsSL https://web-dev-challenge-lewagon-image.oss-cn-shanghai.aliyuncs.com/setup/install_ohmyzsh.sh)"
```

最终，你的终端应该会像这样：

![zsh](images/wsl2_zsh.jpg)


&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果你的终端不长这样，那就**叫老师来帮忙**。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果都是ok的，我们就来配置GitHub吧！

---

#### :wrench: 可能的解决方案

<details>
  <summary>错误： "chsh command unsuccessful. Change your default shell manually."</summary>

  &nbsp;


  你可能输入了错误的密码。
  重新跑一边上面的命令是不行的，因为它会新建一个配置文件夹，但其实是你第一次跑这些命令的时候已经建啦！

  所以你需要先删除它：

  ```bash
  rm -rf ~/.oh-my-zsh
  ```


  现在，可以再运行一遍了！
</details>

---
