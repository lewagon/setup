## Homebrew

[Homebrew](http://brew.sh/) es un gestionador de paquetes: es un programa que se usa para instalar otros programas desde la línea de comando. ¡Vamos a instalarlo!

Abre la terminal y ejecuta lo siguiente:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Te pedirá que confirmes (presionando `Enter`) y también te pedirá la **contraseña de tu cuenta de usuario macOS** (la que usas para [iniciar sesión](https://support.apple.com/en-gb/HT202860) cuando reinicias tu Macbook).

:warning: Cuando escribas tu contraseña no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu contraseña como su longitud. Simplemente escribe tu contraseña y presiona `Enter` al terminar.

:warning: Si ves esta advertencia :point_down:, ejecuta los dos comandos de la sección `Next steps` para añadir Homebrew a tu PATH

![macOS Homebrew installation warning](images/macos_homebrew_warning.png)

Si ya tienes Homebrew instalado, el sistema te lo dirá y puedes continuar.

Luego instala algunos programas útiles:

```bash
brew update
```

Si obtienes un error como este: `/usr/local must be writable`, ejecuta el código que te mostramos a continuación:

```bash
sudo chown -R $USER:admin /usr/local
brew update
```

Ejecuta el siguiente código en tu terminal (puedes copiar y pegar todas las líneas de código al mismo tiempo) independientemente de si obtienes o no un error.

```bash
brew upgrade git || brew install git
brew upgrade gh || brew install gh
brew upgrade wget || brew install wget
brew upgrade imagemagick || brew install imagemagick
brew upgrade jq || brew install jq
brew upgrade openssl || brew install openssl
```
