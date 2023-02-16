## Visual Studio Code

### Installation

Let's install [Visual Studio Code](https://code.visualstudio.com) text editor.

- Go to [Visual Studio Code download page](https://code.visualstudio.com/download).
- Click on "Windows" button
- Open the file you have just downloaded.
- Install it with few options:

![VS Code installation options](images/windows_vscode_installation.png)

When the installation is finished, launch VS Code.

### Connecting VS Code to Ubuntu

To make VS Code interact properly with Ubuntu, let's install the [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) VS Code extension.

Open your **Ubuntu terminal**.

Copy-paste the following commands in the terminal:

```bash
code --install-extension ms-vscode-remote.remote-wsl
```

Then open VS Code from your terminal:

```bash
code .
```

:heavy_check_mark: If you see `WSL: Ubuntu` in the bottom left corner of the VS Code window, you're good to go :+1:

![WSL Ubuntu Remote](images/windows_remote_wsl.png)

:x: Otherwise, please **contact a teacher**
