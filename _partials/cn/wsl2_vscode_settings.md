### VS Code快捷键

在VS Code里：
（如果你的电脑系统语言是中文，你可以找到下面英文按键的对应中文按键。如果找不到，可以问问老师！）

- 点击 `File`
- 点击 `Preferences`
- 点击 `Keymaps`
- 点击 `Sublime Text Keymap and Settings Importer`
- 点击 `Install`


### VS Code插件

让我们下载一些其他有用的插件吧！

针对每个插件，你需要:

- 在网站里，点击`install`
- 再浏览器里，接受使用VS Code来安装插件
- 在VS Code里，点击`install`

**插件列表**
- [Sublime Text Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
- [Rails Snippets](https://marketplace.visualstudio.com/items?itemName=hridoy.rails-snippets)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [ERB Helper Tags](https://marketplace.visualstudio.com/items?itemName=rayhanw.erb-helpers)
- [ruby-rubocop](https://marketplace.visualstudio.com/items?itemName=misogi.ruby-rubocop)

### VS Code设置
- 按下`Ctrl` + `,` 来打开设置
- 在搜索栏里，输入`emmet`
- 点击第一个**`Edit in settings.json`**链接

复制，并把下面的部分粘贴在最后的`}`之前:

```bash
"emmet.triggerExpansionOnTab": true,
"emmet.includeLanguages": {
  "erb": "html"
},
```

应该像下面这样：

![vscode_emmet](images/vscode_emmet.jpg)

:warning: 你需要加一个逗号，如果**`]`**后面没有逗号的话，就像上面图片里的第26行一样☝️

:warning: 别忘了要保存这些修改！

### 最终检查

现在我们要保证所有东西都可以正常工作。关掉VS Code，然后打开Ubuntu终端：

- 按下`Windows` + `R`
- 输入`ubuntu`
- 按下`Enter`


在Ubuntu里，我们来试试启动VS Code：

```bash
code
```

&nbsp;

&nbsp;&nbsp;&nbsp; :x: 如果Visual Studio Code没有打开的话，请**叫老师来帮忙**

&nbsp;&nbsp;&nbsp; :white_check_mark: 如果Visual Studio Code打开了，那说明你的代码编辑器已经好啦！ :muscle:
