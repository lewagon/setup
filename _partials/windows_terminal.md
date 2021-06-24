## Windows Terminal

The standard terminal installed by Ubuntu is a very crude: let's install **Windows Terminal**, a real modern terminal.

### Installation

- Click on `Start`
- Type  `Microsoft Store`
- Click on the Microsoft Windows Store in the list
- Search for `Windows Terminal` in the search bar
- **Select Windows Terminal"**
- Click on `Install`

:warning: DO NOT install **Windows Terminal Preview**, just **Windows Terminal**!

<details>
  <summary>Uninstall wrong version of Windows Terminal</summary>

  To uninstall a wrong version of Windows Terminal, you just have to go to the Installed Program List of Windows 10:

  - Press `Windows` + `R`
  - Type  `ms-settings:appsfeatures`
  - Press `Enter`

  Find the software to uninstall and click on the uninstall button.
</details>

Once the installation is finished, the `Install` button becomes a `Launch` button: click on it.

### Ubuntu as the default terminal

Let's make Ubuntu the default terminal of your Windows Terminal application.

Press `Ctrl` + `,`

It should open the terminal settings:

![Windows Terminal Settings](images/windows_terminal_settings.png)

- Change the default profile to "Ubuntu"
- Click on "Save"
- Click on "Open JSON file"

We have circle in red the part you will change:

![Windows Terminal JSON settings file](images/windows_terminal_settings_json.png)

First, let's ask Ubuntu to start directly inside your Ubuntu Home Directory instead of the Windows one:
- Locate the `"name": "Ubuntu",`
- Add the following line after it:

```bash
"startingDirectory": "//wsl$/Ubuntu/home/the-username-you-chose-at-the-ubuntu-install",
```
:warning: Do not forget the comma at the end of the line!

:warning: Do not forget to replace the username by your own in the line above!

Then, let's disable warning for copy-pasting commands between Windows and Ubuntu:
- Locate the line `"defaultProfile": "{2c4de342-...}"`
- Add the following line after it:

```bash
"multiLinePasteWarning": false,
```

:warning: Do not forget the comma at the end of the line!

You can save these changes by pressing `CTRL` + `S`

:heavy_check_mark: Your **Windows Terminal** is now setup :+1:

This terminal has tabs: you can choose to open a new terminal tab by clicking on t**+** next to the current one.

**From now on, every time we will refer to the terminal or the console it will be this one.** DO NOT use the Ubuntu app anymore.
