## 把你的默认浏览器链接到Ubuntu

为了保证你可以在Ubuntu终端和浏览器进行交互，你需要设置你的默认浏览器。

⚠️ 你需要执行下面的至少一组命令：


<details>
  <summary>用Google Chrome作为默认浏览器</summary>

  &nbsp;


  运行下面的命令:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
  ```

  如果你看到了错误信息，比如`ls: cannot access...` 那就运行下面的命令：

  ```bash
    echo "export BROWSER=\"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'\"" >> ~/.zshrc
  ```

  如果没有错误信息，就运行下面这一行:

  ```bash
    echo "export BROWSER=\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe'\"" >> ~/.zshrc
  ```

</details>


<details>
  <summary>用Mozilla Firefox作为默认浏览器</summary>

  &nbsp;


  运行下面的命令:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe
  ```

  如果你看到了错误信息，比如`ls: cannot access...` 那就运行下面的命令：

  ```bash
   echo "export BROWSER=\"/mnt/c/Program Files/Mozilla Firefox/firefox.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files/Mozilla Firefox/firefox.exe'\"" >> ~/.zshrc
  ```

  如果没有错误信息，就运行下面这一行:

  ```bash
    echo "export BROWSER=\"/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe\"" >> ~/.zshrc
    echo "export GH_BROWSER=\"'/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe'\"" >> ~/.zshrc
  ```
</details>

<details>
  <summary>用Microsoft Edge作为默认浏览器</summary>

  &nbsp;


  运行下面的命令:


  ```bash
    echo "export GH_BROWSER=\"'/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe'\"" >> ~/.zshrc
  ```
</details>


重启你的终端。

然后请保证在终端运行下面这行命令后，会返回"Browser defined 👌"这句话：

```bash
[ -z "$BROWSER" ] && echo "ERROR: please define a BROWSER environment variable ⚠️" || echo "Browser defined 👌"
```

如果没有返回这句话，那在上面的列表中选一个浏览器，然后运行对应的命令。

如果没有的话，

:heavy_check_mark: 如果你看到那条信息，你就可以继续 :+1:

:x: 如果没有，那在上面的列表中选一个浏览器，然后运行对应的命令。然后别忘记重置你的终端：

```bash
exec zsh
```

有问题的话，别犹豫**问老师**。
