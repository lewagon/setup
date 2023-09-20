## Visual Studio Code

### Instalação

Vamos instalar o editor de texto [Visual Studio Code](https://code.visualstudio.com).

- Vá para a [página de download do Visual Studio Code](https://code.visualstudio.com/download).
- Clique no botão "Windows"
- Abra o arquivo que você acabou de baixar.
- Instale-o com algumas opções:

![Opções de instalação do VS Code](images/windows_vscode_installation.png)

Quando a instalação for concluída, inicie o VS Code.

### Conectando o código VS ao Ubuntu

Para fazer o VS Code interagir corretamente com o Ubuntu, vamos instalar a extensão [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) VS Code.

Abra seu **terminal Ubuntu**.

Copie e cole os seguintes comandos no terminal:

```bash
code --install-extension ms-vscode-remote.remote-wsl
```

Em seguida, abra o VS Code em seu terminal:

```bash
code .
```

:heavy_check_mark: Se você vir `WSL: Ubuntu` no canto inferior esquerdo da janela do VS Code, você está pronto para prosseguir :+1:

![WSL Ubuntu remoto](images/windows_remote_wsl.png)

:x: Caso contrário, por favor **entre em contato com um professor**
