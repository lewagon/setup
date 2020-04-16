## Windows Subsystem for Linux

WSL is the development environment we are using to run Ubuntu. You can learn more about WSL [here](https://docs.microsoft.com/en-us/windows/wsl/faq).

Click on **Start** and type **powershell**. Right click on **Windows Powershell**, then on **Run as administrator**. A blue terminal window will appear. Copy the following commands, paste them into the terminal windows by right-clicking into it, and run them by pressing Enter:

(If you are asked to restart your computer, type **n** and **enter** to prevent your computer from restarting at that moment).

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

When all three commands ran without any errors, restart your computer.

Once your computer has restarted, click on **Start** and type **Microsoft Store**. Launch it. In the search bar, type **Ubuntu**. Click on the result that says **Ubuntu** plainly, not **Ubuntu 18.04 LTS**. Then, click on **Install**.

:warning: There is no progress bar for this installation. When it is done you will be asked, in the bottom right corner, to launch it.

The first time you open WSL - you will be asked to choose a username :warning:. Your username should be **one word**, **lowercase** with no **special characters** :warning:, for example: `lewagon`.

It will then ask you for a new password. When you type your password, :warning: it will not appear on the screen :warning: – and there will be no familiar typing indicator even though your keystrokes are being registered. This is a security feature to mask not only your password as a whole but also its length!

You will have to retype your password, and then the installation should be complete.

You can close the terminal now that WSL is installed on your computer.


### Upgrade to WSL 2

First, we need to download the [WSL2 installer](https://aka.ms/wsl2kernel). Click on the suggested link to download the update package and once it is downloaded, open the program.

![update_wsl](images/update_wsl.jpg)

Click on **Next**, then **Finish**.

We also need to make sure that the program files are not compressed. Let's enable an option to let you see hidden files/folders :female_detective:. Click on **Start**. In the search bar type **folder**, open the folder options. Click on the second tab **View**, then under **Hidden files and folders**, select **Show hidden files, folders, and drives**. Click on **Apply**, then **Ok** to close this window.

Open a file explorer. In the sidebar click on **This computer** → **Windows (C:)** → **Users** → **your username account** → **AppData** → **Local** → **Packages**. Here you need to locate the folder starting with **CanonicalGroupLimited.UbuntuonWindows** and open it.

Locate the **LocalState** folder and **right click** on it, then click on **Properties** → **Advanced**.

Make sure that the option **Compress content** is **not** ticked. Click on **Ok** to validate your choice. You will be asked if you want to apply this change only to this folder, or also the subfolders. Please choose only this folder. 

Click on **Start**. In the search bar type **cmd**, open the **Command Prompt**.
You will see all the WSL updates installed on your machine with the command:

```bash
wsl -l -v
```
(translates to "wsl list version")

You should see the Ubuntu version that you installed before.

Let's upgrade it to the version 2, by running the following command:

```bash
wsl --set-version Ubuntu 2
```

A message will appear telling you that the conversion is in progress and that it will take a few minutes.

When you get the message **The conversion is complete**, paste the first command into the command prompt again:

```bash
wsl -l -v
```

and double-check that the version is now **2**.

