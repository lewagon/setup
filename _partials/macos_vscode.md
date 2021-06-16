## Visual Studio Code

### Installation

Let's install [Visual Studio Code](https://code.visualstudio.com) text editor.

Copy (`CMD` + `C`) the command below then paste it in your terminal (`CMD` + `V`):

```bash
brew install --cask visual-studio-code
```

Then launch VS Code:

```bash
'/Applications/Visual Studio Code.app'
```

Now, pin VS Code to your Dock by righ-clicking on the icon to bring up the context menu and choosing "Options" then "Keep in Dock":

![How to pin VS Code to the Dock on macOS](images/macos_dock.png)

### Launching from the terminal

In VS Code, open the Command Palette (`CMD` + `SHIFT` + `P`), type `shell command` and click on "Shell Command: Install 'code' command in PATH" :point_down:

![](images/macos_vscode_command.png)

Now quit the VS Code, quit the Terminal (`CMD` + `Q`) and restart it.

Try typing `code` :point_right: if VS Code opens in new window, you can proceed to the next point!
