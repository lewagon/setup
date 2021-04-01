## Visual Studio Code - Your text editor

A text editor is one of the most important tools of a developer.

Follow these instructions in the Terminal **one by one** (don't copy and paste everything at once):

```bash
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
```

:point_up: This command will ask for your password with: `[sudo] password for <username>:`. Don't panick! Calmly type your password key by key. You won't have a visual feedback (like little `*`), that's **perfectly normal**, keep on typing. When you're done, hit `Enter` :muscle:.

Now let's try to launch your VSCode from **the Terminal**:

```bash
code
```
If the text editor opens in a new window, you can move forward!

### VS Code Shortcuts

In VS Code:
- Click on `File`
- Click on `Preferences`
- Click on `Keymaps`
- Click on `Sublime Text Keymap and Settings Importer`
- Click on `Install`
