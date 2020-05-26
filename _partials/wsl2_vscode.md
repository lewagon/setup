## Visual Studio Code

We use Visual Code Studio for writing code on Windows, because it integrates nicely with the Ubuntu terminal.

For this integration to work, you need to uninstall other code editor, like for example SublimeText, as their WSL integration interferes with the integration of VS Code.

Go the [Visual Studio Code page](https://code.visualstudio.com/download) and click on Windows. The tool should start to download automatically. Open the file you have just downloaded. Install it leaving all the default options as they are.

To help VS Code interact with your terminal, we need to add the extension **Remote Development**. Go to the [extension page](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) and click on **Install**. This will tell you that VS Code is required to install this extension. Click on **Continue**. You will get an alert asking you to open Visual Studio Code. The editor will open to the extension page.

![remote_development](images/remote_development.jpg)

Click on **Install**.
Click on **File → Preferences → Keymaps**. Click on **Sublime Text Keymap and Settings Importer**.
Click on **Install**. Click on **Reload Required**

Let's gain time now and add the Ruby on Rails support for your code editor. Go to the [extension page](https://marketplace.visualstudio.com/items?itemName=hridoy.rails-snippets) and follow the same steps as the Remote Development one.

Press `Ctrl` + `,` on your keyboard to open the settings. In the search bar, type **emmet**. Click on **Edit in settings.json**
Paste the following just before the last **`}`**
```bash
"emmet.triggerExpansionOnTab": true,
"emmet.includeLanguages": {
  "erb": "html"
},
```
It should look like this:
![vscode_emmet](images/vscode_emmet.jpg)

You should add a comma if there is none after the **`]`** like line 26 in the image above ☝️

To make sure everything works fine, open your terminal and type:
```bash
code
```
If Visual Studio Code opens, your code editor is ready :muscle:.
Please call a teacher if it doesn't.
