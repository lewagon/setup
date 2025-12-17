## Windows version

Before we start, we need to check that the version of Windows installed on your computer is compatible with this setup instructions.

### Windows 10 or Windows 11

> :warning: **Note on Windows 10 and security**
>
> The Le Wagon bootcamp setup works on Windows 10. That said, we highly recommend to upgrade to Windows 11. Since October 14th, 2025, Microsoft has ended support for Windows 10, which means it will no longer receive security updates, potentially putting your machine at risk. For more details, read [Microsoft's guide](https://support.microsoft.com/en-us/windows/windows-10-support-has-ended-on-october-14-2025-2ca8b313-1946-43d3-b55c-2b95b107f281). In case your machine can't run Windows 11, consider switching to Ubuntu.

To be able to set up your computer, you need to have **Windows 10 or Windows 11** installed.

To check your Windows version:
- Press `Windows` + `R`
- Type  `winver`
- Press `Enter`

:heavy_check_mark: If the first words of this window are **Windows 11** you're good to go :+1:

If the first words of this window are **Windows 10**, check the **Version number**:

- :heavy_check_mark: If it says at least `2004`, you are good to go :+1:

- :x: If it is below `2004`, you need to run an update.

- <details>
  <summary>How to install updates?</summary>

  Open Windows Update:
  - Press `Windows` + `R`
  - Type  `ms-settings:windowsupdate`
  - Press `Enter`
  - Click on `Check updates`

  :heavy_check_mark: If you see a green check mark and the message "You're up to date", you're good to go :+1:

  :warning: If you have a red exclamation mark and the message "Update available", please install them and repeat the process until it says that you are up to date :loop:

  :x: If you have an error message about Windows not being able to apply updates, please **contact a teacher**.

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

  Check the version number again:

  - Press `Windows` + `R`
  - Type  `winver`
  - Press `Enter`

  :heavy_check_mark: If it says at least `2004`, you are good to go :+1:

  :x: If it is below `2004`, **contact a TA**.

  </details>
