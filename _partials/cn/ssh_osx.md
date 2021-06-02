### SSH 密钥

在一个终端窗口，启动这个命令：


```bash
sw_vers
```

<details>
  <summary>点击这里，如果你的OS版本（版本号）低于10.12</summary>

  为了避免每一次`git push`的时候，重新输入你的SSH密钥，你可以添加以下这些行到你的`~/.ssh/config`文件中：

  首先，打开`~/.ssh/config`文件：

  ```bash
  touch ~/.ssh/config  # Creates the file if it does not exist
  st ~/.ssh/config     # Opens the file in Sublime text
  ```

  然后，添加以下三行到这个文件中。**记得保存**。


  ```bash
  Host *
    AddKeysToAgent yes
    UseKeychain yes
  ```
</details>
