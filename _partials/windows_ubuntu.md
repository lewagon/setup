## Ubuntu

### Installation

- Click on `Start`
- Type  `Microsoft Store`
- Click on the Microsoft Windows Store in the list
- Search for `Ubuntu` in the search bar
- Select version without any number, just plain "Ubuntu"
- Click on `Install`

:warning: Don't install **Ubuntu 18.04 LTS** nor **Ubuntu 20.04**!

<details>
  <summary>Uninstall wrong versions of Ubuntu</summary>

  To uninstall a wrong version of Ubuntu, you just have to go to the Installed Program List of Windows 10:

  - Press `Windows` + `R`
  - Type  `ms-settings:appsfeatures`
  - Press `Enter`

  Find the right software to uninstall and click on the uninstall button.
</details>

Once the installation is done, the `Install` button becomes a `Launch` button:

- Click on `Launch`

At first launch, you will be asked some information:
- Choose a **username**:
    - one word
    - lowercase
    - no special characters
    - for example: `lewagon` or your `firstname`
- Choose a **password**
- Confirm your password

:warning: When typing the password, nothing will not appear on the screen — there will be no familiar typing indicator even though your keystrokes are being registered!

:warning: This is a security feature to mask not only your password as a whole but also its length!

:white_check_mark: The installation should be complete; you can close the Ubuntu window now that it is installed on your computer.

### Check the WSL version of Ubuntu

- Press `Windows` + `R`
- Type  `cmd`
- Press `Enter`

Type the following command:

```bash
wsl -l -v
```

:white_check_mark: If the version of Ubuntu WSL is 2, you are ready to install VS Code!

:x: If the version of Ubuntu WSL is 1, we will need to convert it to version 2.

<details>
  <summary>Convert Ubuntu WSL V1 to V2</summary>


  In the Command Prompt window, type:

  ```bash
  wsl --set-version Ubuntu 2
  ```

  :white_check_mark: After a few seconds, you should get the following message: `The conversion is complete`.

  :x: If it does not work, we need to be sure that Ubuntu files are not compressed.
</details>

<details>
  <summary>Check for Uncompressed Files</summary>

  - Press `Windows` + `R`
  - Type  `%localappdata%\Packages`
  - Press `Enter`
  - Open the folder named `CanonicalGroupLimited.UbuntuonWindows...`
  - Right Click on the `LocalState` folder
  - Click on `Properties`
  - Click on `Advanced`
  - Make sure that the option `Compress content` is **not** ticked, then click on `Ok`.

  Apply changes to this folder only and try to convert the Ubuntu WSL version again.


  :x: If the conversion still does not work, please **contact a teacher**.
</details>

(You can now close this Command Prompt window.)
