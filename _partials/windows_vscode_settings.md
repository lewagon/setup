### VS Code Shortcuts

In VS Code:

- Click on `File`
- Click on `Preferences`
- Click on `Keymaps`
- Click on `Sublime Text Keymap and Settings Importer`
- Click on `Install`


### VS Code Extensions

Let's gain time now and add other extensions that will be helpful during your Bootcamp.

For each of these extensions:

- On the web page, click on `install`
- In the browser, accept to use VS Code to install the extension
- In VS Code, click on `install`

**Extensions**
- [Sublime Text Keymap](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
- [Rails Snippets](https://marketplace.visualstudio.com/items?itemName=hridoy.rails-snippets)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [ERB Helper Tags](https://marketplace.visualstudio.com/items?itemName=rayhanw.erb-helpers)
- [ruby-rubocop](https://marketplace.visualstudio.com/items?itemName=misogi.ruby-rubocop)

### VS Code Settings
- Press `Ctrl` + `,` on your keyboard to open the settings
- In the search bar, type `emmet`
- Click on the first **`Edit in settings.json`** link

Paste the following just before the last `}`:

```bash
"emmet.triggerExpansionOnTab": true,
"emmet.includeLanguages": {
  "erb": "html"
},
```

It should look like this:

![vscode_emmet](images/vscode_emmet.jpg)

:warning: You should add a comma if there is none after the **`]`** like line 26 in the image above ☝️

:warning: Don't forget to save those changes!

### Final Check

To make sure everything works fine, close VS Code, then open your Ubuntu terminal:

- Press `Windows` + `R`
- Type  `ubuntu`
- Press `Enter`


In Ubuntu, let's try to launch VS Code:

```bash
code
```

&nbsp;

&nbsp;&nbsp;&nbsp; :x: If Visual Studio Code does not open, please **contact a teacher**

&nbsp;&nbsp;&nbsp; :white_check_mark: If Visual Studio Code opens, your code editor is ready! :muscle:
