Hello and welcome to this Windows cheatsheet.

The goal is to gather here all known issues and tips with the Windows setup.

# Issues

## Network Unreachable

When trying to connect to remote hosts, eg. when trying to do `sudo apt update`, you might see an error message saying that the network is unreachable. Here are two possible solutions: if the first one doesn't help, try the second one.

### A note about diagnosing this problem

- This is a common networking issue, and we must be sure that the problem lies with WSL only, and not with the Windows host. Please first ensure that there are no known networking issues on Windows. If you can successfully browse a few sites on Windows, but you can't connect to the internet in WSL, it would appear that this is an WSL problem. Please continue to the next section.

### Refresh and reset network

- `Start` > `cmd` > 'Open as administrator'
- Run the following commands:
    ```bash
    wsl --shutdown
    netsh winsock reset
    netsh int ip reset all
    netsh winhttp reset proxy
    ipconfig /flushdns
    ```
- Reset the network (`Start` > Search for `Network Reset`; click `Reset`)
- Restart Windows
- *[Source](https://github.com/microsoft/WSL/issues/4926#issuecomment-679410653)*. There might be other relevant solutions there.
- If this still does not solve your problem, try the next section.

### Add a custom DNS server address to WSL

- Open a WSL terminal and type the following:
  ```bash
  sudo mv /etc/resolv.conf /etc/resolv.conf.old
  sudo touch /etc/resolv.conf
  sudo echo "[network]\ngenerateResolvConf = false\n" >> /etc/wsl.conf
  ```
- You should now have internet access within the WSL terminal.
- Ensure that the fix works even when WSL is restarted. Open PowerShell and run the following command:
  ```bash
  wsl.exe --shutdown
  ```
- Open a new WSL terminal. You should be able to access the internet.
- *[Source](https://stackoverflow.com/a/60302925)*.

## Uncompressed and Unencrypted error

When running `wsl --set-default-version 2`, you might get a:
```
Error: 0xc03a001a The requested operation could not be completed due to a virtual disk system limitation. Virtual hard disk files must be uncompressed and unencrypted and must not be sparse.
```
![image](https://user-images.githubusercontent.com/45776359/114172634-474fc700-990c-11eb-9687-39ff94dd2536.png)

To fix this issue, open the `File Explorer` and go to:
`C:\Users\<YOUR_USERNAME>\AppData\Local\Packages\CanonicalGroupLimited<SOMETHING>`

It should look something like this:
![image](https://user-images.githubusercontent.com/45776359/114173107-01473300-990d-11eb-81c6-9950d6315569.png)

Right click on `LocalState`, then `Properties`, then `Advanced`.

Ensure `Compress contents to save disk space` and `Encrypt contents to secure data` are both deselected.

Click `OK`, then `Apply`, then `Apply changes to this folder only`.

[Credits](https://simplernerd.com/wsl2-uncompressed/).

## Input/Output error

This happens when the hidden `wslhost.exe` is not working. We just need to restart it!

Close all WSL2 tabs.

Open a PowerShell tab and run the following command:

```bash
wsl.exe --shutdown
```

Check that your Ubuntu is properly stopped with the command

```bash
wsl -l -v
```

Open a new WSL2 Tab, problem should be fixed.

## ERR_CONNECTION_REFUSED / Unable to reach localhost

If you get this error trying to connect to your `rails server`, `serve` or `jupyter notebook`, a simple restart of WSL might do the trick.

- Open a new PowerShell tab
- Run `wsl --shutdown` to shutdown WSL.
- Open a new PowerShell tab or run `wsl` to restart WSL.
- Retry to connect to `localhost:xxxx`. You can as well try `127.0.0.1:xxxx` (the local IP of the machine) instead.

If the issue is still present, you need to allow the connection in Windows Defender Public rules.
Close all WSL terminal. Open a PowerShell terminal and type the following command to stop all WSL processes:

```bash
wsl --shutdown Ubuntu
```

Hit **Start** and type `Windows Defender Firewall` and open it.

Click on **Advanced Settings**

Right click on **Inboud Rules** and select **New Rule...**. Under **Rule Type** leave `Program` selected and hit **Next**.

For the program, Select `The program path:` and paste this path: `%SystemRoot%\System32\wsl.exe`. Click on **Next**.

For the Action section, make sure `Allow the connection` is selected and hit **Next**.

For the Profile section, make sure the 3 options are selected and click on **Next**.

Finally you will be asked to chose a name for this new rule, go with `WSL - Inbound`.

Repeat the whole process by creating a **Outbound Rule** with the same settings, except for the name: `WSL - Outbound`.

## Insecure World Writable

The warning `Insecure world writable dir /mnt/c in PATH, mode 040777` is caused by the two differents way of Windows & Linux to deal with file permissions.
To silence those warnings:

```bash
sudo touch /etc/wsl.conf
echo '[automount]' | sudo tee -a /etc/wsl.conf > /dev/null
echo 'options="metadata,umask=0033"' | sudo tee -a /etc/wsl.conf > /dev/null
```

Restart all terminals.

## Update version 2004 not offered

Microsoft is slowly releasing the latest major version of Windows (version 2004). Here is the guideline if your Windows is not offering you the update.
Go to [Windows 10](https://www.microsoft.com/en-us/software-download/windows10) and under `Windows 10 May 2020 Update` click on **Update now**. This will download a tool on your machine. Open it.

A compatibility check will start:

![Check PC compatibility with Windows 2004 1/3](../images/windows_2004.png)

Next, you will be offered a choice, choose **Upgrade this PC now** and click on **Next**:

![Check PC compatibility with Windows 2004 1/3](../images/windows_2004_2.png)

Let the tool do the work:

![Check PC compatibility with Windows 2004 1/3](../images/windows_2004_3.png)

Microsoft is encountering some errors with the version 2004, Chances are that the update assistant will tell you that you're machine is not compatible yet!
Do not close the assistant.
Open a file explorer at this **path** `C:\$WINDOWS.~BT\Sources\Panther`
Locate the file `compatscancache.dat` and **delete it**
Go back to the update assistant and click **Refresh**.

The installation should carry on.

## Sudo apt update connection timed out

This happens if you're using AVG antivirus.
Disable AVG VPN if you're using it.

Open AVG Internet **Security -> Menu - Settings - Full Protection - Enhanced firewall**. Check `Enable Internet connection sharing mode`
On the same page, click on **System Rules** and enabled the first 2 options `Windows file & printer sharing` `Remote desktop connections`
Scroll down to click on save.

## Slow network

If you experience slow network on your fresh WSL2:

- Open Ubuntu (or your other distro)

- Open Network Connections in your settings ("View network connections" in your windows search)

- You should see

```bash
  vEthernet (WSL)
  Enabled
  Hyper-V Virtual Ethernet Adapter
```

- Right-click and open Properties

- In the Properties pane, click Configure...

- In the Configure pane, go to the "Advanced" Tab

- Click on "Large Send Offload Version 2" and update the value to "Disabled"

If you see two "Large Send Offload Version" options, disable both.

## Cloudinary: Stale request

If you see issues connecting to your Cloudinary API from your local WSL and you saw this error.

```
Stale request - reported time is 2016-12-15 04:14:53 +0000 which is more than 1 hour ago
```

The error is caused by a different system time between the WSL OS and the windows host machine. To fix it, please run this command in your windows terminal:

```
sudo hwclock -s
```

Type your WSL password and click enter.

# Tips

## Check Windows Subsystem for Linux

Open a PowerShell terminal.

Type the following command:

```bash
wsl -l -v
```

It will tell you the name of your WSL, it's state and version.

## Switch from version 1 to version 2

To switch a WSL from version 1 to 2, open a PowerShell terminal.

Type the following command:
⚠️ The conversion's time depends on the size of your Ubuntu filesystem, it can be long and WSL will be unsuable in the meantime. ⚠️

```bash
wsl --set-version Ubuntu 2
```

You can revert to version 1:

```bash
wsl --set-version Ubuntu 1
```

## Access root session

To access the `root` session, open a PowerShell terminal.

Type the following command:

```bash
wsl -d Ubuntu -u root
```

You can change the password of that `root` session by using the command:

```bash
passwd
```

You will prompted to enter a new password.

Now, from your normal session, you can switch from your session to the `root` on with:

```bash
su -
```

You will be asked for the password.

You can exit the `root` session with `Ctrl + D`.

## Testing on Rails

You need to have the latest version of Chrome installed on your machine to run tests on Rails, since we will use _Headless Chrome_ for System Testing. It's a browser without a user interface, well-suited for this kind of automated tests. Before running your system tests you need to make sure you have a **recent** version of Chrome on your system (not Chromium).

If you are getting a `Webdrivers::BrowserNotFound: Failed to find Chrome binary` error when running tests, it means that you are missing Chrome on your system or need to install the latest version:

```bash
# Ubuntu
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb
```

Once installed, you can run your tests with:

```bash
rails test:system
```
