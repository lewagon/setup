## Parámetros de macOS

### Seguridad

Es imperativo proteger tu sesión con una contraseña. Si todavía no es el caso, ve a ` > System Preferences > Users & Groups` y cambia la contraseña de tu computadora. Luego ve a ` > System Preferences > Security > General`. Configura el sistema para que pida la contraseña cada `5 seconds` después de regresar de la opción suspender y cuando se active el protector de pantalla.

También puedes ir a ` > System Preferences > Mission Control` y haz clic en el botón `Hot Corners` abajo a la izquierda. Selecciona la opción donde al hacer clic en la esquina inferior derecha se active el protector de pantalla. De esa manera al dejar tu escritorio podrás bloquear tu pantalla rápidamente poniendo el cursor del ratón en la esquina inferior derecha. En 5 segundos tu Macbook se bloqueará y te pedirá la contraseña para volver a tu sesión.

### Teclado

A medida que te vayas convirtiendo en programador, entenderás que pierdes tiempo cuando quitas las manos del teclado para usar otra herramienta. Por esa razón es importante aprender a minimizar el uso del trackpad o del ratón. Aquí te mostramos algunos trucos para que lo hagas en macOS.

#### Velocidad del teclado

Ve a ` > System Preferences > Keyboard`. Coloca a `Key Repeat` en la posición más rápida (a la derecha) y a `Delay Until Repeat` en la posición más corta (a la derecha).

#### macOS para hackers

[Lee este script](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) y selecciona algunas cosas que creas que serán útiles para ti. Por ejemplo, puedes escribir lo siguiente en la terminal:

```bash
# Expanding the save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save screenshots to the Desktop (or elsewhere)
defaults write com.apple.screencapture location "${HOME}/Desktop"

# etc..
```

### Anclaje de aplicaciones a tu dock

Usarás frecuentemente casi todas las aplicaciones que has instalado hoy. ¡Anclémoslas a tu dock para que estén a solo un clic de ti!

Para ello, inicia la aplicación. Haz clic derecho en el ícono de la barra de tareas para hacer que aparezca el menú contextual (también llamado emergente) y selecciona "Options" y después "Keep in Dock".

![Cómo anclar una aplicación a la barra de tareas en macOS](images/macos_dock.png)

Ancla lo siguiente:
- Tu terminal
- Tu explorador de archivos
- VS Code
- Tu navegador de Internet
- Slack
- Zoom
