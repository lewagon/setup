
## Ubuntu File System

### Exchange files between Windows and Ubuntu

We need an easy way to transfer files from Windows to Ubuntu and vice versa.

In order to do that, we will create shortcuts to Ubuntu directories in the Windows **File Explorer**.

![](images/wsl_ubuntu_file_system.png)

Here are the steps:

- Open the Windows File Explorer (or use the shortcut Win + E)
- In the Address Bar, enter `\\wsl$\` (or `\\wsl$\Ubuntu` if it does not work)
- You now have acces to the Ubuntu file system
- Dive into the Ubuntu file system in order to look for directories of interest
- Drag the desired folders into the Address Bar in order to create shortcuts

![](images/wsl_ubuntu_file_system.gif)

### Open the Windows File Explorer from the WSL shell

Another option to move files around is to open the Windows **File Explorer** from the WSL shell.

In order to do that:

- Open a WSL shell
- Go to the directory you wish to explore
- Run the `explorer.exe .` command
- If you get an input output error message, run `wsl --shutdown` in the Windows PowerShell and reopen a WSL shell

![](images/wsl_explorer.png)

### Find your way in the Ubuntu File System

You might want to figure out the exact location of a Windows directory in the Ubuntu file system, or the other way around.

In order to convert a Windows path to and from a WSL path:

- Open a WSL shell
- Use the `wslpath "C:\Program Files"` command in order to translate a Windows path into a WSL path
- Use the `wslpath -w "/home"` command in order to translate a WSL path into a Windows path
- In particular, the `wslpath -w $(pwd)` command returns the Windows path of the current directory in the WSL shell

![](images/wsl_path.png)
