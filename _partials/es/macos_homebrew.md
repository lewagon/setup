## Homebrew

[Homebrew](http://brew.sh/) es un gestionador de paquetes: es un programa que se usa para instalar otros programas desde la línea de comando. ¡Vamos a instalarlo!

Abre la terminal y ejecuta lo siguiente:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Te pedirá que confirmes (presionando `Enter`) y también te pedirá la **contraseña de tu cuenta de usuario macOS** (la que usas para [iniciar sesión](https://support.apple.com/en-gb/HT202860) cuando reinicias tu Macbook).

:warning: Cuando escribas tu contraseña no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu contraseña como su longitud. Simplemente escribe tu contraseña y presiona `Enter` al terminar.

Si ya tienes Homebrew instalado, el sistema te lo dirá y puedes continuar.

Una vez que Homebrew haya terminado de instalarse, ejecuta estos dos comandos para agregarlo a tu `PATH`:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Asegúrate de tener la última versión:

```bash
brew update
```

Luego, instala algunos programas útiles (puedes copiar y pegar todas las líneas de código al mismo tiempo):

```bash
brew upgrade git         || brew install -y git
brew upgrade gh          || brew install -y gh
brew upgrade wget        || brew install -y wget
brew upgrade imagemagick || brew install -y imagemagick
brew upgrade jq          || brew install -y jq
brew upgrade openssl     || brew install -y openssl
brew upgrade tree        || brew install -y tree
brew upgrade direnv      || brew install -y direnv
```
