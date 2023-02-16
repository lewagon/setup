## Visual Studio Code

### Instalación

Instala el editor de texto [Visual Studio Code](https://code.visualstudio.com).

- Ve a [la página de descarga de Visual Studio Code](https://code.visualstudio.com/download).
- Haz clic en el botón "Windows"
- Abre el archivo que acabas de descargar.
- Instálalo con pocas opciones:

![Opciones de instalación de VS Code](images/windows_vscode_installation.png)

Abre VS Code cuando termine la instalación.

### Conexión de VS Code con Ubuntu

Instala la extensión de VS Code llamada [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) para hacer que VS Code interactúe adecuadamente con Ubuntu.

Abre tu **terminal Ubuntu**.

Copia y pega los siguientes comandos en la terminal:

```bash
code --install-extension ms-vscode-remote.remote-wsl
```

Luego abre VS Code desde la terminal:

```bash
code .
```

:heavy_check_mark: Si ves `WSL: Ubuntu` en la esquina inferior izquierda de la ventana de VS Code, entonces todo está bien y puedes continuar :+1:

![WSL Ubuntu Remote](images/windows_remote_wsl.png)

:x: Si no es el caso, por favor **pídele ayuda a un profesor**.
