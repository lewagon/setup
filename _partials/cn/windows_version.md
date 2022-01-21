## 开始设置的条件

在开始之前，很重要的一件事是先看看你的电脑设置有没有满足这些条件！这样才能保证配置成功。请花点时间仔细阅读所有的文字。如果有问题，不要犹豫向老师提问哦。

### Windows 10 或者 Windows 11

你的电脑必须是 **Windows 10 或者 Windows 11**才可以开始配置。

检查windows版本的方式：
- 按下 `Windows` + `R`
- 输入  `winver`
- 按下 `Enter`

:heavy_check_mark: 如果窗口里的前几个词就是**Windows 10 或者 Windows 11**的话，你可以直接到下一步了！:+1:

:x: 如果你的电脑没有提示**Windows 10 或者 Windows 11**，那你现在就需要更新到Windows 10:point_down:

<details>
  <summary>更新到Windows 10</summary>

  - 从[Microsoft](https://www.microsoft.com/software-download/windows10ISO)下载Windows 10
  - 下载后就可以安装它。应该会花掉差不多1小时的时间，这取决于你的电脑。
  - 安装结束后，运行上面的命令:point_up:来检查你有没有**Windows 10**。
</details>

:information_source: [Windows 11更新正在滚动](https://www.microsoft.com/en-us/windows/get-windows-11)，意思就是有些电脑可能还不能更新到11。

:warning: **如果Windows 10已经装好了，你不需要更新到11来继续配置**。

### 最近的更新

确认好你的电脑是Windows 10或者11之后，你就可以安装最近的更新了。

打开Windows更新：
- 按下 `Windows` + `R`
- 输入  `ms-settings:windowsupdate`
- 按下 `Enter`
- 点击 `检查更新`(`Check updates`)

:heavy_check_mark: 如果你看到一个绿色的勾勾，然后还有一条“You're up to date（已经是最新版本）”的信息，那你就可以继续下一步了:+1:

:warning: 如果你看到一个红色的感叹号，然后还有一条“Update available（有可更新版本）”，那就请安装它，然后重复以上步骤直到电脑提示你所有的东西都是最新版本:loop:

:x: 如果出现关于无法更新的错误提示，**叫老师**来看看。

<details>
  <summary>启用Windows Update Service（Windows更新服务）来修复更新</summary>

  有些软件可能会禁用我们想用的更新服务。所以更新的时候你的电脑就会报错。可以这样修复它！（如果你的电脑系统语言是中文，你可以找到下面英文按键的对应中文按键。如果找不到，可以问问老师！）
  - 按下 `Windows` + `R`
  - 输入  `services.msc`
  - 按下 `Enter`
  - 双击 `Windows Update Service`
  - 把它从 `Startup` 改成 `Automatic`
  - 点击 `Start`
  - 点击 `Ok`
  现在，我们再来试试更新吧！
</details>

### 最低版本需求

有些我们需要的工具已经在Windows 10的`1903`或**之后**的版本中发布了。所以请保证你最少要这个版本！

- 按下 `Windows` + `R`
- 输入  `winver`
- 按下 `Enter`

检查**版本号**:

:heavy_check_mark: 如果你是`1903`或以上的版本, 你就可以继续下一步了:+1:

:x: 如果低于`1903`, 请**问老师**。
