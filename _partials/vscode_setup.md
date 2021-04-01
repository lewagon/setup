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

```bash
code --install-extension ms-vscode.sublime-keybindings
code --install-extension hridoy.rails-snippets
code --install-extension dbaeumer.vscode-eslint
code --install-extension rayhanw.erb-helpers
code --install-extension misogi.ruby-rubocop
```

### VS Code Settings

- On macOS, press `Cmd` + `,` on your keyboard (or `Ctrl` + `,` on Windows or Linux) to open the settings
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
