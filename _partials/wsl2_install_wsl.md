## Windows Subsystem for Linux

WSL is the development environment you are going to use. You can learn more about WSL [here](https://docs.microsoft.com/en-us/windows/wsl/faq).

Click on **Start** and type **powershell**. Right click on **Windows Powershell (x86)**, then click on **Run as administrator**. A blue box will appear. Copy and paste the following command into the blue box:

(You will be asked to restart your computer. Type **n** and **enter** to prevent your computer from restarting).
```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```


Run the following command:

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

Then this one:

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

You can now restart your computer.

Once your computer has restarted, click on **Start** and type **Microsoft Store**. Launch it. In the search bar, type **Ubuntu**. Click on the first result **Ubuntu**, not **Ubuntu 18.04 LTS**. Click on **Install**.

:warning: There is no progress bar for this installation. When it is done you will be asked, in the bottom right corner, to launch it.

The first time you open WSL - you will be asked to choose a username :warning:. Your username should be **one word**, **lowercase** with no **special characters** :warning:.
Example: 'lewagon'

It will then ask you for a new password. When you type your password, :warning: it will not appear on the screen :warning: - and there will be no familiar typing indicator even though your keystrokes are being registered.  This is a security feature to mask not only your password as a whole but also its length!

You will have to retype your password then the installation will be successful.

You can close the terminal now that WSL is installed on your computer.


### Upgrade to WSL 2

By default WSL is in it's first version, **1**.
Let's upgrade it to **version 2**.
For this, we need to update the program. Click on this [link](https://aka.ms/wsl2kernel). Click on the suggested link to download the update package. Once it has downloaded, open the program.
![update_wsl](images/update_wsl.jpg)

Click on **Next** then **Finish**.

We also need to make sure that the program files are not compressed. Let's enable an option to let you see hidden files/folders :female_detective:. Click on **Start**. In the search bar type **folder**, open the folder options. Click on the second tab **View**, then under **Hidden files and folders**, select **Show hidden files, folders, and drives**. Click on **Apply**, then **Ok** to close this window.

Open a file explorer. In the sidebar click on **This computer** >**Windows (C:)** > **Users** > **your username account** > **AppData** > **Local** > **Packages**. Here you need to locate the folder starting with **CanonicalGroupLimited.UbuntuonWindows** and open it.

Locate the **LocalState** folder and **right click** on it > **Properties** > **Advanced**.

Make sure than the option **Compress content** is not ticked. Click on **Ok** to validate your choice. You will be asked if you want to apply this change only to this folder, or also the subfolders. Please choose only this folder. 

Click on **Start**. In the search bar type **cmd**, open the **Command Prompt**.
You will see all the WSL updates installed on your machine with the command:

```bash
wsl -l -v
```
(translates to wsl list version)

You should see the Ubuntu version that you installed before.

Let's upgrade it to the version 2, by running the following command:

```bash
wsl --set-version Ubuntu 2
```

A message will appear telling you that the conversion is in progress and that it will take a few minutes.

When you get the message **The conversion is complete**, paste the following command into the command prompt:

```bash
wsl -l -v
```
and double-check that the version is now the version 2.

