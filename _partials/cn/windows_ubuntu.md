## Ubuntu
### 安装


- 点击`Start`
- 输入`Microsoft Store`
- 点击列表中的微软的Windows商店
>
>
- 在搜索栏里搜索`Ubuntu`
- 选择没有数字的版本，就只是一个单词"Ubuntu"
>
>
- 点击`安装`


:warning: 不要安装**Ubuntu 18.04 LTS**或者**Ubuntu 20.04**!

---

#### :wrench: 可能的解决方案


<details>
  <summary>卸载不正确版本的Ubuntu</summary>

  &nbsp;


  要卸载不正确的版本，你只需要打开Windows 10的已安装软件的列表：


  - 按下`Windows` + `R`
  - 输入`ms-settings:appsfeatures`
  - 按下`Enter`


  找到正确的软件然后点击卸载按钮。
</details>

---


&nbsp;
一旦安装完成了，`安装`按钮就会变成`启动`按钮：


- 点击`启动`


第一次启动的时候，你会需要填写一些信息：
- 选择一个**用户名**:
    - 一个词
    - 全小写
    - 不要特殊字符
    - 举个例子: `lewagon`或者你的`firstname`
- 选择一个**密码**
- 确认你的密码


:warning: 当你输入密码的时候，屏幕上什么都不会出现 -- 因为在这里，虽然你输入的信息都已经被录入了，但是不会有输入的指针。

:warning: 这是一个安全的功能。这样不仅你的密码不会被看见，长度也不会被知道。


&nbsp;


&nbsp;&nbsp;&nbsp; :white_check_mark: 安装应该都完成了。现在你可以选择Ubuntu窗口了！

### 检查Ubuntu的WSL version


- 按下`Windows` + `R`
- 输入`cmd`
- 按下`Enter`


输入下面的命令：

```bash
wsl -l -v
```

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果Ubuntu WSL的版本是1，你需要把它换成2。

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果Ubuntu WSL版本是2，你就可以安装VS Code了！


---

#### :wrench: 可能的解决方案


<details>
  <summary>把Ubuntu WSL V1换成V2</summary>


  &nbsp;


  在命令提示字元窗口，输入：

  ```bash
  wsl --set-version Ubuntu 2
  ```

  &nbsp;

  &nbsp;&nbsp;&nbsp; :white_check_mark: 几秒之后，你应该会收到这条转换完成的信息：`The conversion is complete`.

  &nbsp;&nbsp;&nbsp; :x: 如果不行的话，我们就需要检查并确保Ubuntu文件没有被压缩。
</details>

<details>
  <summary>检查没有被压缩的文件</summary>


  &nbsp;
  - 按下`Windows` + `R`
  - 输入`%localappdata%\Packages`
  - 按下`Enter`
  >
  >
  - 打开这个文件夹`CanonicalGroupLimited.UbuntuonWindows...`
  - 右击`LocalState`文件夹
  - 点击`Properties`（属性）
  - 点击`Advanced`（高级）
  - 确保`Compress content`（压缩内容）选项**没有**被选，然后点击`Ok`。


  只对这个文件夹应用修改，然后再试试换Ubuntu WSL的版本。


  &nbsp;&nbsp;&nbsp; :x: 如果转换还是不行，**叫老师来帮忙**。
</details>

---


(现在你可以关掉命令提示字元窗口了。)
