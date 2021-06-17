## Windows version

Before we start, we need to check that the version of Windows installed on your computer is compatible with this setup instructions.

### Windows 10

To be able to set up your computer, you need to have **Windows 10** installed.

To check your Windows version:
- Press `Windows` + `R`
- Type  `winver`
- Press `Enter`

:white_check_mark: If the first words of this window are **Windows 10** you're good to go :+1:

:x: If it does not mention **Windows 10**, you cannot proceed with this setup — but do not panic! You can always upgrade to Windows 10 :relieved:

#### :wrench: Potential Fixes

<details>
  <summary>Upgrade to Windows 10</summary>
  - Download Windows 10 from [Microsoft](https://www.microsoft.com/software-download/windows10ISO)
  - Install it. It should take roughly an hour, but this is dependent on your computer
  - When the installation is over, execute the commands above :pointing_up: to check that you now have **Windows 10**
</details>

### Latest updates

Once you're sure that you're using Windows 10, you need to install all the latest updates.

Open Windows Update:
- Press `Windows` + `R`
- Type  `ms-settings:windowsupdate`
- Press `Enter`
- Click on `Check updates`


:white_check_mark: If you a green check mark and the message "You're up to date", you're good to go :+1:

:warning: If you have a red exclamation mark and the message "Update available", please install them and repeat the process until it says that you are up to date :loop:

:x: If you have an error message about Windows not being able to apply updates, please **contact a teacher**.

#### :wrench: Potential Fixes

<details>
  <summary>Activate Windows Update Service to fix Updates</summary>
  Some antiviruses and pieces of software deactivate the Update service we need, resulting in the error you see. Let's fix that!
  - Press `Windows` + `R`
  - Type  `services.msc`
  - Press `Enter`
  - Double Click `Windows Update Service`
  - Set its `Startup` to `Automatic`
  - Click on `Start`
  - Click on `Ok`
  Then let's try updates again!
</details>

### Minimum version

Some of the tools we need to install have been release with the `1903` version **or above** of Windows 10 so we need to make sure you have at least this one.

- Press `Windows` + `R`
- Type  `winver`
- Press `Enter`

Check the **Version number**:

:white_check_mark: If it says at least `1903`, you are good to go :+1:

:x: If it is below `1903`, please **contact a teacher**.
