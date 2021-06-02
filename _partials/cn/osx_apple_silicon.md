## 检查你的电脑是否为Apple Silicon(Apple M1芯片)

如果你是在2020下半年买的电脑，它更有可能是Apple Silicon而不是Intel处理器。让我们来查看查看...

你可以从Applications > Utilities或者在[Spotlight](https://support.apple.com/en-gb/HT204014)里面搜索：

![](images/open-terminal.png)

复制粘贴以下的指令到终端里并按`Enter`来执行这段指令。

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lewagon/setup/master/utils/osx_list_processor_type.sh)"
```

☝️执行完这段代码之后将会表明你的电脑是否使用的是Apple Silicon。

如果你的电脑使用的是Apple Silicon，展开下面的段落并进行阅读。如果不是的话，请忽略它。

<details>
  <summary>👉&nbsp;&nbsp;Setup for Apple Silicon 👈</summary>

  &nbsp;



## Apple Silicon的相关设置

### 卸载Homebrew

我们需要卸载Homebrew以防本地已经安装了一个版本。

在终端中执行以下代码:

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

如果brew如果没有被安装，你将会得到以下消息`brew: command not found!`

### 为Rosetta配置终端

打开访达Finder（或者在[Spotlight](https://support.apple.com/en-gb/HT204014)里搜索它)。

前往Applications > Utilities.

复制终端应用(选择它, 然后Cmd + C, Cmd + V)，并将它的复制重命名为Terminal Rosetta。

在Terminal Rosetta软件上按Cmd + I, 然后勾选”使用Rosetta打开（Open using Rosetta）“.

⚠️ 从此以后在训练营中，每当你需要打开终端的时候，你将需要打开**Terminal Rosetta**应用。

启动终端应用程序。将会跳出安装Rosetta窗口。点击安装。

</details>
