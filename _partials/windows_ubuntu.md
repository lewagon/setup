## Ubuntu

### Installation

After restarting you computer, you should see a terminal window saying WSL is resuming the Ubuntu installation process. When it's done, Ubuntu will be launched.

If the Ubuntu installation did not resume, try it again: 
- Press `Windows` + `R`
- Type  `cmd`
- Press **`Ctrl` + `Shift` + `Enter`**
- Run `wsl --install`


<details>
<summary>Troubleshooting for Windows 10 (only if needed, check with a TA)
</summary>


If you are running Windows 10, let's install Ubuntu throught the Microsoft Store:

- Click on `Start`
- Type  `Microsoft Store`
- Click on `Microsoft Store` in the list
- Search for `Ubuntu` in the search bar
- **Select version without any number, just plain "Ubuntu"**
- Click on `Get`

:warning: Don't install **Ubuntu 18.04 LTS** nor **Ubuntu 20.04**!

<details>
  <summary>Uninstall wrong versions of Ubuntu</summary>

  To uninstall a wrong version of Ubuntu, you just have to go to the Installed Program List of Windows 10:
  - Press `Windows` + `R`
  - Type  `ms-settings:appsfeatures`
  - Press `Enter`

  Find the software to uninstall and click on the uninstall button.
</details>

Once the installation is finished, the `Get` button becomes a `Open` button: click on it.

</details>

### First launch

At first launch, you will be asked some information:
- Choose a **username**:
    - one word
    - lowercase
    - no special characters
    - for example: `lewagon` or your `firstname`
- Choose a **password**
- Confirm your password

:warning: When you type your password, nothing will show up on the screen, **that's normal**. This is a security feature to mask not only your password as a whole but also its length. Just type your password and when you're done, press `Enter`.

### Check your username

Type this in the Ubuntu terminal:

```bash
whoami
```

It should return the username you chose before.

:x: It if says `root`, **contact a TA** before continuing!
