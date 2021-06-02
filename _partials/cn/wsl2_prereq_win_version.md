### 最新的Windows版本

打开Windows Update：


- 按下 `Windows` + `R`
- 输入  `ms-settings:windowsupdate`
- 按下 `Enter`
>
>
- 点击 `检查更新`(`Check updates`)

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果出现关于无法更新的错误提示，**叫老师**来看看。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果你看到有可以更新的版本，请安装它然后重复以上步骤直到电脑提示你所有的东西都是最新版本了。


---

#### :wrench: 可能的解决方案

<details>
  <summary>启用Windows Update Service（Windows更新服务）来修复更新</summary>

  &nbsp;


  有些软件可能会禁用我们想用的更新服务。所以更新的时候你的电脑就会报错。可以这样修复它！


  - 按下 `Windows` + `R`
  - 输入  `services.msc`
  - 按下 `Enter`
  >
  >
  （如果你的电脑系统语言是中文，你可以找到下面英文按键的对应中文按键。如果找不到，可以问问老师！）
  - 双击 `Windows Update Service`
  - 把它从 `Startup` 改成 `Automatic`
  - 点击 `Start`
  - 点击 `Ok`

  现在，我们再来试试更新吧！
</details>

---

### Windows版本要求

有些我们需要的工具已经在Windows 10的`1903`或**之后**的版本中发布了。所以请保证你最少要这个版本！


- 按下 `Windows` + `R`
- 输入  `winver`
- 按下 `Enter`


检查**版本号**:


&nbsp;&nbsp;&nbsp; :x: 如果低于`1903`, 你可以根据上面[最新的Windows版本](#Latest-version-of-Windows)的部分来安装更新。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果你是`1903`或以上的版本, 你就可以继续下一步了！ :sunglasses:
