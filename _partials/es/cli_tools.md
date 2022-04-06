## Git

### Zsh & Git

En lugar de usar el `bash` [shell](https://en.wikipedia.org/wiki/Shell_(computing)) predeterminado, usaremos `zsh`.

También utilizaremos [`git`](https://git-scm.com/), un programa de línea de comando par control de versiones.

Vamos a instalarlos, junto con otros programas útiles:
- Abre una terminal
- Copia y pega los siguientes comandos:

```bash
sudo apt update
sudo apt install -y curl git imagemagick jq unzip vim zsh
```

Estos comandos te pedirán tu contraseña: Agrégala.

:warning: Cuando escribas tu contraseña no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu contraseña como su longitud. Simplemente escribe tu contraseña y presiona `Enter` al terminar.

### Instalación de la CLI de GitHub

Instalemos la [CLI oficial de GitHub](https://cli.github.com) (Interfaz de Línea de Comando). Es un programa que se usa para interactuar con tu cuenta GitHub por medio de la línea de comando.

En tu terminal, copia y pega los siguientes comandos y escribe tu contraseña si te la piden:

```bash
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install -y gh
```

Ejecuta el comando que te mostramos a continuación para verificar que `gh` se haya instalado correctamente en tu máquina:

```bash
gh --version
```

:heavy_check_mark: Si ves esta versión `gh version X.Y.Z (YYYY-MM-DD)`, puedes continuar trabajando :+1:

:x: Si no es el caso, por favor **contacta a un profesor**
