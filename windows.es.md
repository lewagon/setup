# Instrucciones de la configuración

Aquí abajo encontrarás las instrucciones para la configuración que tu computadora necesita para el [curso de Desarrollo Web de Le Wagon](https://www.lewagon.com/web-development-course/full-time).

Por favor, **léelas cuidadosamente y ejecuta todos los comandos en el orden indicado**. Si tienes algún problema, no dudes en pedirle ayuda a tu profesor :raising_hand:

¡Comencemos! :rocket:


## Zoom

Para poder interactuar cuando no estemos en el mismo lugar físico, usaremos [Zoom](https://zoom.us/), una herramienta de videoconferencia.

:warning: Si ya tienes Zoom instalado, por favor asegúrate de que por lo menos tienes versión **5.6**.

Ve a [zoom.us/download](https://zoom.us/download).

Haz clic en el botón **Download** debajo de **Zoom Client**.

Abre el archivo que acabas de descargar para instalar la aplicación.

Abre la aplicación Zoom.

Si ya tienes una cuenta Zoom, inicia sesión con tus credenciales.

Si no, haz clic en el enlace **Sign Up Free**, que significa registrarse gratuitamente:

![Registrarse gratuitamente en Zoom](images/zoom_sign_up_free.png)

Te redireccionarán a la página de Zoom para que completes un formulario.

Cuando termines, regresa a la aplicación Zoom e inicia sesión usando tus credenciales.

Deberías ver una pantalla como la siguiente:

![Pantalla de inicio de Zoom](images/zoom_home_screen.png)

Ya puedes cerrar la aplicación Zoom.


## Cuenta GitHub

¿Ya tienes una cuenta GitHub? Si no es el caso, [ábrela ya](https://github.com/join).

:point_right: **[Sube una foto](https://github.com/settings/profile)** y escribe tu nombre correctamente en tu cuenta GitHub. Esto es importante porque nosotros usaremos un tablero de comando interno con tu avatar. Por favor hazlo **ahora** antes de dar un paso más en esta guía.

![Foto GitHub](images/github_picture.png)


## La versión de Windows

Antes de comenzar, necesitamos verificar que la versión de Windows instalada en tu computadora sea compatible con estas instrucciones de configuración.

### Windows 10 o Windows 11

Para poder configurar tu computadora, necesitas tener **Windows 10 o Windows 11** instalado.

Para chequear la versión de tu Windows:
- Presiona `Windows` + `R`
- Escribe  `winver`
- Presiona `Enter`

:heavy_check_mark: Si las primeras palabras de esta ventana son **Windows 10 o Windows 11**, entonces todo está bien y puedes continuar trabajando en la configuración :+1:

:x: Si no es el caso, no puedes continuar. Primero debes actualizar tu versión a Windows 10 :point_down:

<details>
  <summary>Actualizar a Windows 10</summary>

  - Descarga Windows 10 desde [Microsoft](https://www.microsoft.com/software-download/windows10ISO)
  - Instálalo. Debería tomar como una hora pero realmente depende de tu computadora.
  - Cuando termine la instalación, ejecuta los comandos de aquí arriba :point_up: para chequear que tengas **Windows 10**.
</details>

:information_source: [La actualización de Windows 11 está en curso en este momento](https://www.microsoft.com/en-us/windows/get-windows-11). Esto significa que puede que esté o que aún no esté disponible para tu computadora.

:warning: **Si tienes Windows 10 instalado, no necesitas actualizarlo a Windows 11 para hacer esta configuración**.

### Últimas actualizaciones

Una vez que estés seguro de que estés usando Windows 10 o 11, instala las siguientes actualizaciones.

Abre Windows Update:
- Presiona `Windows` + `R`
- Escribe `ms-settings:windowsupdate`
- Presiona `Enter`
- Haz clic en `Check updates`

:heavy_check_mark: Si tienes una marca verde y el siguiente mensaje "You're up to date", entonces todo está bien :+1:

:warning: Si obtienes una exclamación roja y el siguiente mensaje "Update available", por favor instala las actualizaciones y repite el proceso hasta que diga que todo está actualizado :loop:

:x: Si obtienes un mensaje de error diciendo que Windows no puede aplicar las actualizaciones, por favor **contacta a un profesor**.

<details>
  <summary>Activa Windows Update Service para resolver las Actualizaciones</summary>

  Algunos antivirus y programas deshabilitan las actualizaciones que necesitamos y luego se muestra un error. ¡Solucionemos esto!
  - Presiona `Windows` + `R`
  - Escribe `services.msc`
  - Presiona `Enter`
  - Haz doble clic en `Windows Update Service`
  - Coloca su `Startup` en `Automatic`
  - Haz clic en `Start`
  - Haz clic en `Ok`
  ¡Ahora intenta instalar las actualizaciones nuevamente!
</details>

### Requisito mínimo para la versión

Algunas de las herramientas que necesitamos han salido con la versión `1903` **o superior** de Windows 10, así que necesitamos asegurarnos de que al menos tengamos esa.

- Presiona `Windows` + `R`
- Escribe  `winver`
- Presiona `Enter`

Verifica el **número de la versión**:

:heavy_check_mark: Si dice al menos `1903`, entonces todo está bien :+1:

:x: Si es inferior a `1903`, por favor **contacta a un profesor**.


## Virtualización

Tenemos que asegurarnos de que las opciones de Virtualización estén habilitadas en el BIOS de tu computadora.

Normalmente ya es el caso en muchas computadoras. Verifiquemos:
- Presiona `Windows` + `R`
- Escribe `taskmgr`
- Presiona `Enter`
- Haz clic en la pestaña `Performance`
- Haz clic en `CPU`

![Windows task manager](images/windows_task_manager.png)

:heavy_check_mark: Si ves "Virtualization: Enabled", entonces todo está bien :+1:

:x: Si falta la línea o si la virtualización está desactivada, por favor **contacta a un profesor antes de intentar activar la Virtualización por tu cuenta**

<details>
  <summary>Activa la Virtualización</summary>

  Debemos acceder al BIOS / UEFI de la computadora para activarla.
  - Presiona `Windows + R`
  - Escribe `shutdown.exe /r /o /t 1`
  - Presiona `Enter`
  - Espera a que la computadora se apague
  - Haz clic en `Troubleshoot`
  - Haz clic en `Advanced Options`
  - Haz clic en `UEFI Firmware Settings`
  - Haz clic en `Restart`

  Debes activar la opción de la virtualización para tu procesador aquí:
  - La mayoría de las veces se hace en los parámetros avanzados, los parámetros del CPU o los parámetros de Northbridge
  - El nombre de la opción puede variar de una computadora a otra:
      - Intel: `Intel VT-x`, `Intel Virtualization Technology`, `Virtualization Extensions`, `Vanderpool`...
      - AMD: `SVM Mode` o `AMD-V`
  - Guarda los cambios después de la activación y reinicia la computadora con las opciones correspondientes
</details>


## Subsistema de Windows para Linux (WSL)

WSL es el ambiente de entorno que estamos usando para usar Ubuntu. Puedes aprender más sobre WSL [aquí](https://docs.microsoft.com/en-us/windows/wsl/faq).

:information_source: Las instrucciones que verás a continuación dependen de la versión de Windows que tengas. Por favor ejecuta solamente las instrucciones que correspondan a tu versión :point_down:

### Windows 11

Si usas Windows 11, instalaremos WSL 2 y Ubuntu con un comando a través de la terminal de Windows.

:warning: en esta instrucción, utiliza el atajo `Ctrl` + `Shift` + `Enter` para usar la **terminal de Windows** con privilegios de administrador en lugar de simplemente hacer clic en `Ok` o presionar `Enter`.

- Presiona `Windows` + `R`
- Escribe `wt`
- Presiona **`Ctrl` + `Shift` + `Enter`**

:warning: tal vez tengas que aceptar la confirmación UAC sobre el cambio en los privilegios.

Un ventana de terminal azul aparecerá:
- Copia el siguiente comando (`Ctrl` + `C`)
- Pégalo en la ventana de la terminal (`Ctrl` + `V` o haciendo clic derecho en la ventana)
- Ejecútalo presionado `Enter`

```powershell
wsl --install
```

:heavy_check_mark: Si el comando se ejecutó sin ningún error, por favor reinicia tu computadora y continúa con las siguientes instrucciones aquí abajo :+1:

:x: Si obtienes un mensaje de error (o si ves algún texto en rojo en la ventana), por favor **contacta a un profesor**

### Windows 10

#### Instalación de WSL 1

Si tienes Windows 10, primero instalaremos WSL 1 por medio de la Terminal de PowerShell.

:warning: en esta instrucción, utiliza el atajo `Ctrl` + `Shift` + `Enter` para usar **Windows PowerShell** con privilegios de administrador en lugar de hacer clic en `Ok` o presionar `Enter`.

- Presiona `Windows` + `R`
- Escribe `powershell`
- Presiona **`Ctrl` + `Shift` + `Enter`**

:warning: tal vez tengas que aceptar la confirmación UAC sobre el cambio en los privilegios.

Un ventana de terminal azul aparecerá:
- Copia los siguiente comandos uno por uno (`Ctrl` + `C`)
- Pégalos en la ventana de Powershell (`Ctrl` + `V` o haciendo clic derecho en la ventana)
- Ejecútalos presionado `Enter`

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

:heavy_check_mark: Si los tres comandos se ejecutaron sin ningún error, por favor reinicia tu computadora y continúa con las instrucciones de aquí abajo :+1:

:x: Si obtienes un mensaje de error (o si ves algún texto en rojo en la ventada), por favor **contacta a un profesor**

#### Actualización a WSL 2

Si tienes Windows 10, actualizaremos WSL a la versión 2.

Cuando se reinicie tu computadora, descarga el instalador de WSL2.

- Ve a la [página de descarga](https://aka.ms/wsl2kernel)
- Descarga "el paquete de actualización de WSL2 Linux kernel"
- Abre el archivo que acabas de descargar
- Haz clic en `Next`
- Haz clic en `Finish`

![Actualiza WSL de la versión 1 a la 2](images/windows_update_wsl.png)

:heavy_check_mark: Si no obtuviste ningún mensaje de error, entonces puedes continuar :+1:

:x: Si obtienes el siguiente error "This update only applies to machines with the Windows Subsystem for Linux", **haz clic derecho** en el programa y selecciona `uninstall`; esta vez deberías poder instalarlo sin problemas.

#### Coloca WSL 2 como el Subsistema Windows por defecto para Linux

Si tienes Windows 10, pondremos la versión predeterminada de WSL en 2.

Ahora coloca WSL 2 como la versión predeterminada. Esto lo podemos hacer porque ya está instalado:
- Presiona `Windows` + `R`
- Escribe  `cmd`
- Presiona `Enter`

Escribe lo siguiente en la ventana que aparecerá:

```bash
wsl --set-default-version 2
```

:heavy_check_mark: Si ves este mensaje "The operation completed successfully", puedes cerrar esta terminal y continuar con las siguientes instrucciones aquí abajo :+1:

:x: Si el mensaje que obtienes es sobre virtualización, por favor **contacta a un profesor**

<details>
  <summary>Habilita de la feature de la Virtual Machine Platform en Windows</summary>

  Sigue los pasos [siguientes](https://www.configserverfirewall.com/windows-10/please-enable-the-virtual-machine-platform-windows-feature-and-ensure-virtualization-is-enabled-in-the-bios/#:~:text=To%20enable%20WSL%202,%20Open,Windows%20feature%20on%20or%20off.&text=Ensure%20that%20the%20Virtual%20Machine,Windows%20will%20enable%20WSL%202) hasta que hayas habilitado <strong>la Virtual Machine Platform</strong> y <strong>el Subsistema de Windows para Linux</strong>
</details>

<details>
  <summary>Habilita la feature de Windows Hyper-V</summary>

  Sigue los pasos [siguientes](https://winaero.com/enable-use-hyper-v-windows-10/) hasta que hayas habilitado el grupo <strong>Hyper-V</strong>
</details>


## Ubuntu

### Instalación

:information_source: Las instrucciones que verás a continuación dependen de la versión de Windows que tengas. Por favor solo sigue las instrucciones que correspondan a tu versión de Windows :point_down:

#### Windows 11

Si estás utilizando Windows 11, después de reiniciar tu computadora, deberías ver una ventana de terminal diciendo WSL está retomando el proceso de instalación de Ubuntu. Cuando termine, iniciará Ubuntu.

#### Windows 10

Si tienes Windows 10, instala la terminal de Windows por medio de la Microsoft Store:

- Haz clic en `Start`
- Escribe `Microsoft Store`
- Haz clic en `Microsoft Store` en la lista
- Busca `Ubuntu` en la barra de búsqueda
- **Selecciona la versión sin nombre, simplemente "Ubuntu"**
- Haz clic en `Install`

:warning: ¡NO instales **Ubuntu 18.04 LTS** ni **Ubuntu 20.04**!

<details>
  <summary>Desinstala las versiones incorrectas de Ubuntu</summary>

  Para desinstalar las versiones incorrectas de Ubuntu, solo tienes que ir a la Lista de Programas Instalados de Windows 10:
  - Presiona `Windows` + `R`
  - Escribe `ms-settings:appsfeatures`
  - Preiona `Enter`

  Busca el programa que desees desinstalar y haz clic en el botón de desinstalación.
</details>

Cuando termine la instalación, el botón `Install` se transformará en un botón `Launch`: Haz clic en él.

### Primer uso

La primera vez que lo abras, te pedirán que:
- Escojas un **username** de:
    - una palabra
    - minúscula
    - sin caracteres especiales
    - por ejemplo: `lewagon` o tu `firstname`, es decir, tu primer nombre
- Escoge un **password**
- Confírmalo

:warning: Cuando escribas tu contraseña no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu contraseña como su longitud. Simplemente escribe tu contraseña y presiona `ENTER` al terminar.

Ahora puedes cerrar la ventana de Ubuntu ya que está instalado en tu computadora.

### Chequea la versión WSL de Ubuntu

- Presiona `Windows` + `R`
- Escribe  `cmd`
- Presiona `Enter`

Escribe el siguiente comando:

```bash
wsl -l -v
```

:heavy_check_mark: Si la versión de WSL de Ubuntu es 2, entonces todo está bien y puedes continuar :+1:

:x: Si la versión de WSL de Ubuntu es 1, tendremos que pasarla a la versión 2.

<details>
  <summary>Conversión de WSL de Ubuntu V1 a V2</summary>

  Escribe esto en la ventana de Entrada de Comandos:

  ```bash
  wsl --set-version Ubuntu 2
  ```

  :heavy_check_mark: Deberías obtener el siguiente mensaje en algunos segundos: `The conversion is complete`. Esto significa que la conversión ha sido completada.

  :x: Si no funciona, tendremos que asegurarnos de que los archivos de Ubuntu no estén comprimidos.
</details>

<details>
  <summary>Chequea si los archivos no están comprimidos</summary>

  - Presiona `Windows` + `R`
  - Escribe  `%localappdata%\Packages`
  - Presiona `Enter`
  - Abre la carpeta `CanonicalGroupLimited.UbuntuonWindows...`
  - Haz clic derecho en la carpeta `LocalState`
  - Haz clic en `Properties`
  - Haz clic en `Advanced`
  - Asegúrate de que la opción `Compress content` **no** esté seleccionada. Luego haz clic en `Ok`.

  Aplícale cambios a esta carpeta solamente y trata de convertir la versión de WSL de Ubuntu nuevamente.

  :x: Si la conversión aún no funciona, por favor **contacta a un profesor**.
</details>

Ya puedes cerrar la ventana de la terminal.


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

:heavy_check_mark: Si ves `WSL: Ubuntu` en una caja verde en la esquina inferior izquierda de la ventana de VS Code, entonces todo está bien y puedes continuar :+1:

![WSL Ubuntu Remote](images/windows_remote_wsl.png)

:x: Si no es el caso, por favor **pídele ayuda a un profesor**.


## Extensiones de VS Code

### Instalación

Vamos a instalar algunas extensiones útiles de VS Code.

Copia y pega los siguientes comandos en tu terminal:

```bash
code --install-extension ms-vscode.sublime-keybindings
code --install-extension emmanuelbeziat.vscode-great-icons
code --install-extension MS-vsliveshare.vsliveshare
code --install-extension rebornix.ruby
code --install-extension dbaeumer.vscode-eslint
code --install-extension Rubymaniac.vscode-paste-and-indent
code --install-extension alexcvzz.vscode-sqlite
```

Aquí está la lista de las extensiones que estás instalando:
- [Sublime Text Keymap and Settings Importer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.sublime-keybindings)
- [VSCode Great Icons](https://marketplace.visualstudio.com/items?itemName=emmanuelbeziat.vscode-great-icons)
- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)
- [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Paste and Indent](https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-paste-and-indent)
- [SQLite](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)


## Terminal de Windows

### Instalación

:information_source: Las instrucciones que verás a continuación dependen de la versión de Windows que tengas.

Si estás utilizando Windows 11, la terminal de Windows ya está instalada y puedes ir a la siguiente sección :point_down:


Si tienes Windows 10, instala la terminal de Windows. Verás que es una terminal moderna:

- Haz clic en `Start`
- Escribe `Microsoft Store`
- Haz clic en `Microsoft Store` en la lista
- Busca `Windows Terminal` en la barra de búsqueda
- **Selecciona Windows Terminal"**
- Haz clic en `Install`

:warning: ¡NO instales **Windows Terminal Preview**, solo instala **Windows Terminal**!

<details>
  <summary>Desinstala la versión incorrecta de la terminal de Windows</summary>

  Para desinstalar la versión incorrecta la terminal de Windows, solamente tienes que ir a la lista de programas instalados de Windows 10:

  - Presiona `Windows` + `R`
  - EScribe  `ms-settings:appsfeatures`
  - Presiona `Enter`

  Busca el programa que quieres desinstalar y haz clic en el botón de desinstalación.
</details>

Cuando termine la instalación, el botón `Install` se transformará en un botón `Launch`: haz clic en él.

### Ubuntu como terminal predeterminada

Hagamos que Ubuntu sea la terminal predeterminada de tu aplicación Windows terminal.

Presiona `Ctrl` + `,`

Debería abrir los parámetros de la terminal:

![Parámetros de Windows Terminal](images/windows_terminal_settings.png)

- Cambia el perfil predeterminado a "Ubuntu"
- Haz clic en "Save"
- Haz clic en "Open JSON file"

Verás la parte a cambiar en un círculo rojo:

![Archivo de parámetros JSON de Windows Terminal](images/windows_terminal_settings_json.png)

Primero pídele a Ubuntu que inicie directamente dentro de tu Ubuntu Home Directory en vez de hacerlo desde Windows:
- Localiza el `"name": "Ubuntu",`
- Agrega la siguiente línea debajo de eso:

```bash
"commandline": "wsl.exe ~",
```

:warning: ¡Que no se te olvide la coma al final de la línea!

Luego deshabilita el warning para copiar y pegar comandos entre Windows y Ubuntu:
- Localiza la línea `"defaultProfile": "{2c4de342-...}"`
- Agrega la siguiente línea debajo de eso:

```bash
"multiLinePasteWarning": false,
```

:warning: ¡No olvides la coma al final de la línea!

Puedes guardar estos cambios presionando `Ctrl` + `S`

:heavy_check_mark: Tu **Windows Terminal** ya está configurada :+1:

Esta terminal tiene pestañas: puedes escoger abrir una terminal en una nueva pestaña haciendo clic en el **+** al lado de la pestaña actual.
**De ahora en adelante, cada vez que hablemos de la terminal o la consola, nos referiremos a esta.** NUNCA más uses otra.


### Configuración de Live Share

[Visual Studio Live Share](https://visualstudio.microsoft.com/services/live-share/) es una extensión de VS Code que te permite compartir el código en tu editor de texto para debugging y pair-programming: ¡Instalémoslo!

Abre VS Code desde tu terminal escribiendo `code` y presionando `ENTER`.

Haz clic en la pequeña flecha de la parte inferior de la barra de la izquierda:

![VS Code Live Share](images/vscode_live_share.png)

- Haz clic en el botón "Share". Luego en "GitHub (Inicia sesión usando tu cuenta GitHub)".
- Va a aparecer una ventana emergente pidiéndote que inicies sesión con GitHub: Haz clic en "Allow".
- Te redireccionarán a una página GitHub en tu navegador pidiéndote que autorices Visual Studio Code: Haz clic en "Continue" y luego en "Authorize github".
- Es posible que VS Code muestre más ventanas emergentess: Ciérralas haciendo clic en "OK".

Eso es todo. ¡Ya puedes continuar!


## Git

### Instalación

[`git`](https://git-scm.com/) es un programa de línea de comando utilizado para control de versiones.

Sigue estos pasos para instalar `git`:
- Abre una terminal
- Copia y pega los siguientes comandos:

```bash
sudo apt update
sudo apt install -y git
```

Estos comandos te pedirán tu contraseña: Agrégala.

:warning: Cuando escribas tu contraseña no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu contraseña como su longitud. Simplemente escribe tu contraseña y presiona `ENTER` al terminar.

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


## zsh

En lugar de usar el `bash` [shell](https://en.wikipedia.org/wiki/Shell_(computing)) predeterminado, usaremos `zsh`.

Ejecuta el siguiente comando en una terminal y escribe tu contraseña si te la piden:

```bash
sudo apt install -y zsh curl vim imagemagick jq unzip
```


## Oh-my-zsh

Instalemos el plugin `zsh` [Oh My Zsh](https://ohmyz.sh/).

Ejecuta este comando en la terminal:

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Si te preguntan "Do you want to change your default shell to zsh?", presiona `Y`

Cuando termines, tu terminal debería lucir así:

![La terminal de Ubuntu con OhMyZsh](images/oh_my_zsh.png)

:heavy_check_mark: Si es el caso, puedes continuar :+1:

:x: Si no, por favor **pídele ayuda a un profesor**.


## GitHub CLI

CLI es una abreviación de [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface) que significa interfaz de línea de comando.

En esta sección usaremos [GitHub CLI](https://cli.github.com/) para interactuar directamente con GitHub desde la terminal.

Ya debería haberse instalado en tu computadora con los comandos que ejecutaste anteriormente.

Lo primero que hay que hacer para **iniciar sesión** es copiar y pegar el comando siguiente en tu terminal:

:warning: **NO edites el `email`**

```bash
gh auth login -s 'user:email' -w
```

Obtendrás el siguiente resultado:

```bash
! First copy your one-time code: 0EF9-D015
- Press Enter to open github.com in your browser...
```

Selecciona y copia el código (`0EF9-D015` en el ejemplo) y luego presiona `ENTER`.

Tu navegador se abrirá y te pedirá que autorices GitHub CLI para usar tu cuenta GitHub. Acepta y espera un poco.

Regresa a la terminal, presiona `ENTER` nuevamente y listo. Eso es todo.

Para verificar que están conectado correctamente, escribe lo siguiente:

```bash
gh auth status
```

:heavy_check_mark: Si obtienes este mensaje: `Logged in to github.com as <YOUR USERNAME> `, significa que todo está bien :+1:

:x: De lo contrario, **contacta a un profesor**.

Luego ejecuta esta línea de configuración:

```bash
gh config set git_protocol ssh
```


## SSH Key

### Generación

Debemos generar SSH keys las cuales serán utilizadas por GitHub para autenticarte. Piensa que es una manera de iniciar sesión pero diferente a la forma convencional del usuario/contraseña.

:warning: Si ya has generado keys que utilizas actualmente con otros servicios, puedes ignorar este paso.

Abre una terminal y copia y pega este comando, reemplazando el email con el **tuyo** (el que usaste cuando creaste tu cuenta en GitHub).

```bash
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "TYPE_YOUR_EMAIL@HERE.com"
```

Te pedirá información. Simplemente presiona enter hasta que pida una **passphrase**.

:warning: Cuando te pidan una passphrase, pon algo que quieras y que recuerdes. Es una contraseña para proteger tu private key que está almacenada en tu disco duro.

:warning: Cuando escribas tu passphrase, no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu passphrase como su longitud. Simplemente escribe tu passphrase y presiona `ENTER` al terminar.

### Comunicarle tu public key a GitHub

Ahora le vas a dar tu **public** key a GitHub.

En tu terminal copia y pega el siguiente comando:

```bash
gh auth refresh -s write:public_key
```

Mostrará una código una única vez (####-####) en la pantalla. Cópialo y presiona `ENTER`. Luego pega el código en tu navegador y sigue las instrucciones para **Autorizar a GitHub**.

Vuelve a la terminal. Presiona `ENTER` y ejecuta esto:

```bash
gh ssh-key add ~/.ssh/id_ed25519.pub
```

Eso debería devolver `✓ Public key added to your account`. Si no es el caso, no dudes **en pedirle ayuda a un profesor**.


## Dotfiles (configuración estándar)

Los hackers aman mejorar sus shells y sus herramientas.

Comenzaremos con una configuración predeterminada proporcionada por Le Wagon: [`lewagon/dotfiles`](https://github.com/lewagon/dotfiles).

Tu configuración es personal, así que necesitas tu **propio** repositorio para almacenarla. Haz el **fork** del repositorio de Le Wagon.

Hacer un fork significa crear un nuevo repositorio en tu propia cuenta GitHub `$GITHUB_USERNAME/dotfiles` el cual es idéntico al original de Le Wagon y que podrás modificar como quieras.

Abre tu terminal y ejecuta los siguientes comandos:

```bash
export GITHUB_USERNAME=`gh api user | jq -r '.login'`
echo $GITHUB_USERNAME
```

:heavy_check_mark: Deberías ver tu usuario GitHub en la pantalla.

:x: Si no es el caso, **no des un paso más** y pide ayuda. Es posible que haya un problema con el paso anterior (`gh auth`).

Es hora de hacer el fork del repositorio y clonarlo en tu computadora:

```bash
mkdir -p ~/code/$GITHUB_USERNAME && cd $_
gh repo fork lewagon/dotfiles --clone
```

### Instalación de Dotfiles

Ejecuta el instalador de `dotfiles`:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles
zsh install.sh
```

Verifica los emails registrados en tu cuenta GitHub. Deberás seleccionar uno en el paso siguiente:

```bash
gh api user/emails | jq -r '.[].email'
```

:heavy_check_mark: Si ves una lista de tus emails registrados, puedes continuar :+1:

:x: De lo contrario, por favor haz la [autenticación en GitHub](https://github.com/lewagon/setup/blob/master/windows.es.md#github-cli) nuevamente antes de ejecutar este comando :point_up: again.

### Instalación de git

Ejecuta el instalador de `git`:

```bash
cd ~/code/$GITHUB_USERNAME/dotfiles && zsh git_setup.sh
```

:point_up: Esto te **pedirá** tu nombre (`FirstName LastName`) y tu email.

:warning: **Necesitas** poner uno de los emails que aparecen arriba gracias al comando anterior `gh api ...`. De lo contrario, Kitt no podrá hacerle seguimiento a tu progreso.

Ahora **resetea** tu terminal ejecutando lo siguiente:

```bash
exec zsh
```


## Desahilitación de la solicitud de SSH passphrase

No vas a querer que te pidan tu passphrase cada vez que te comuniques con un repositorio remoto. Por eso debes agregarle plugin `ssh-agent` a `oh my zsh`:

Primero abre el archivo `.zshrc`:

```bash
code ~/.zshrc
```

Luego:
- Identifica la línea que comienza por `plugins=`
- Agrega `ssh-agent` al final de la lista de plugins

La lista debería verse de la siguiente manera:

```bash
plugins=(gitfast last-working-dir common-aliases zsh-syntax-highlighting history-substring-search pyenv ssh-agent)
```

:heavy_check_mark: Guarda el archivo `.zshrc` con `Ctrl` + `S` y cierra tu editor de texto.


## rbenv

Instala [`rbenv`](https://github.com/sstephenson/rbenv), un programa para instalar y gestionar entornos `ruby`.

Primero debemos limpiar cualquier instalación previa de Ruby que tengas en tu computadora:

```bash
rvm implode && sudo rm -rf ~/.rvm
# If you got "zsh: command not found: rvm", carry on.
# It means `rvm` is not on your computer, that's what we want!
rm -rf ~/.rbenv
```

Luego ejecuta lo siguiente en tu terminal:

```bash
sudo apt install -y build-essential tklib zlib1g-dev libssl-dev libffi-dev libxml2 libxml2-dev libxslt1-dev libreadline-dev
```

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

```bash
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
exec zsh
```


## Ruby

### Instalación

Ahora estás listo para instalar la última versión de [ruby](https://www.ruby-lang.org/en/) y ponerla como la versión predeterminada.

Corre este comando, **tomará un tiempo (5-10 minutos)**

```bash
rbenv install 3.0.3
```

Cuando la instalación de ruby termine, corre este comando para decirle al sistema que use la versión 3.0.3 por defecto.

```bash
rbenv global 3.0.3
```

**Reinicia** tu terminal y chequea tu versión Ruby:

```bash
exec zsh
```

Luego ejecuta esto:

```bash
ruby -v
```

:heavy_check_mark: Si ves algo que comience por `ruby 3.0.3p`, entonces puedes continuar +1:

:x: Si no es el caso, **pídele ayuda a un profesor**.

### Instalación de algunas gemas

<details>
  <summary>Si estás en <bold>China</bold></summary>

  :warning: Si estás en China, deberías actualizar la forma de instalar las gemas con los siguientes comandos.

```bash
# China only!
gem sources --remove https://rubygems.org/
gem sources -a https://gems.ruby-china.com/
gem sources -l
# *** CURRENT SOURCES ***
# https://gems.ruby-china.com/
# Ruby-china.com must be in the list now
```
</details>

En el universo de ruby, a las librerías externas se les llama `gems`: son pedazos de código ruby que puedes descargar y ejecutar en tu computadora. ¡Instalemos algunas!

En tu terminal, copia y pega el siguiente comando:

```bash
gem install rake bundler rspec rubocop rubocop-performance pry pry-byebug colored http 'rails:~>6.1'
```

:heavy_check_mark: Si obtienes `xx gems installed`, entonces todo está bien :+1:

:x: Si obtienes el siguiente error:

```bash
ERROR: While executing gem ... (TypeError)
incompatible marshal file format (can't be read)
format version 4.8 required; 60.33 given
```

Ejecuta el siguiente comando:
```bash
rm -rf ~/.gemrc
```

Ejecuta el comando nuevamente para instalar las gemas.

:warning: ¡**NUNCA** instales una gema con `sudo gem install`! Incluso si encuentras una solución en Stackoverflow (o la terminal) diciéndote que lo hagas.


## Node.js

[Node.js](https://nodejs.org/en/) es un JavaScript runtime para ejecutar código JavaScript en la terminal. Instálalo con [nvm](https://github.com/nvm-sh/nvm), aun gestionador de versiones para Node.js.

En una terminal, ejecuta estos comandos:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh
exec zsh
```

Luego corre el siguiente comando:

```bash
nvm -v
```

Deberías ver una versión. Si no, pídele ayuda a tu profesor.

Ahora instala node:

```bash
nvm install 16.13.1
```

Cuando termine la instalación, corre lo siguiente:

```bash
node -v
```

Si ves `v16.13.1`, the installation succeeded :heavy_check_mark: entonces ahora puedes ejecutar lo siguiente:

```bash
nvm cache clear
```

:x: De lo contrario, **contacta a un profesor**.


## yarn

[`yarn`](https://yarnpkg.com/) es un gestor de paquetes para instalar librerías JavaScript. Instálalo:

En una terminal, ejecuta los siguientes comandos:

```bash
npm install --global yarn
exec zsh
```

Luego ejecuta este comando:

```bash
yarn -v
```

:heavy_check_mark: si ves una versión, entonces todo está bien :+1:

:x: Si no es el caso, **pídele ayuda a un profesor**


## SQLite

En algunas semanas, hablaremos de bases de datos y de SQL. [SQLite](https://sqlite.org/index.html) es un sistema de base de datos utilizado para ejecutar consultas SQL en bases de datos de un solo archivo. Vamos a instalarlo:

En un terminal, ejecuta los siguientes comandos:

```bash
sudo apt-get install sqlite3 libsqlite3-dev
```

A continuación, ejecuta el siguiente comando:

```bash
sqlite3 -versión
```

:heavy_check_mark: Si ves una versión, puedes continuar :+1:
:x: Si no, **pídele ayuda a un profesor**


## PostgreSQL

A veces, SQLite no es suficiente y necesitaremos una herramienta más avanzada llamada [PostgreSQL](https://www.postgresql.org/), un sistema de base de datos de código abierto y listo para usar en producción.

Vamos a instalarlo ahora.

Ejecuta los siguientes comandos:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo /etc/init.d/postgresql start
```

```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

Puedes configurar PostgreSQL para que inicie automáticamente para no tener que ejecutar el comando `sudo /etc/init.d/postgresql start` cada vez que abras una nueva terminal:

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```

```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```

```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```

Abre una nueva terminal.

:heavy_check_mark: Si ves un mensaje `* Starting PostgreSQL 12 database server`, entonces todo está bien y puedes continuar :+1:

:x: Si no es el caso, **contacta a un profesor**.


## Chequeo

Verifiquemos si has instalado todo bien.

Ejecuta el siguiente comando en tu terminal:

```bash
exec zsh
```

Luego ejecuta lo siguiente:

```bash
curl -Ls https://raw.githubusercontent.com/lewagon/setup/master/check.rb > _.rb && ruby _.rb && rm _.rb || rm _.rb
```

:check_mark: Si obtienes un mensaje verde diciendo `Awesome! Your computer is now ready!`, significa que tu computadora está lista y que todo está bien :+1:

:x: De lo contrario, **habla con tu profesor**.


## Kitt

:warning: Si recibiste una invitación por email de Le Wagon para crear una cuenta en Kitt (nuestra plataforma de aprendizaje), ignora este paso y sigue las instrucciones en el email si es que todavía no lo has hecho.

Si no sabes que hacer, haz clic en [este enlace](https://kitt.lewagon.com/). Si ya iniciaste sesión, puedes omitir esta sección. Si no, haz clic en `Enter Kitt as a Student`. Esto significa iniciar sesión como estudiante. Si no tienes problemas para iniciar sesión, puedes omitir este paso. De lo contrario pídele a un profesor que te confirme si debiste haber recibido o si debes seguir las instrucciones de aquí abajo.

Registrate como alumni de Le Wagon yendo a [kitt.lewagon.com/onboarding](http://kitt.lewagon.com/onboarding). Selecciona tu batch, inicia sesión con GitHub y completa toda la información que te piden.

Ahora tu profesor podrá validar que realmente eres parte del batch. Pídele que lo haga justo después de que hayas completado el formulario de registro.

Cuando el profesor haya aprobado tu perfil, ve a la bandeja de entrada de tu email. Deberías tener 2 nuevos emails:

- Uno de Slack, invitándote a la comunidad de los alumni de Le Wagon en slack (donde podrás chatear con tus compañeros y todos los demás alumni). Haz clic en **Join** y completa la información que te piden.
- Otro de GitHub, invitándote a `lewagon` team. **Acéptala**, de lo contrario no podrás acceder a las diapositivas de las clases.


## Slack

[Slack](https://slack.com/) es una plataforma de comunicación popular en la industria tech.

### Instalación

[Descarga la aplicación Slack](https://slack.com/downloads/windows) e instálala.

:warning: Si ya estás usando Slack en tu navegador, por favor descarga e instala **la aplicación de escritorio** la cual tiene todas las funciones.


### Parámetros

Abre la aplicación e inicia sesión en `lewagon-alumni`.

Asegúrate de **subir una foto para tu perfil** :point_down:

![Cómo subir una foto de perfil en Slack](images/slack_profile_picture.gif)

La idea es tener Slack abierto todo el día para compartir enlaces útiles / pedir ayuda / decidir dónde almorzar / etc.

Para asegurarte de que todo lo relacionado a videollamadas funcione bien, prueba tu cámara y tu micrófono:
- Abre la aplicación Slack
- Escribe `/call --test` en la barra de mensaje de cualquier canal y presiona `ENTER`
- Haz clic en el botón verde "Start test"

![Chequea el micrófono y la cámara con Slack](images/slack_call_test.png)

:heavy_check_mark: Cuando termine el test deberías ver mensajes de "Succeed" en verde por lo menos para tu micrófono y tu cámara. :+1:

:x: Si no es el caso, **contacta a un profesor**.

¡También puedes instalar la aplicación Slack en tu smartphone e iniciar sesión en `lewagon-alumni`!


## Parámetros de Windows

### Intercambio de archivos entre Windows y Ubuntu

Necesitamos una manera fácil de transferir archivos de Windows a Ubuntu y viceversa.

Para ello, vamos a crear atajos a directorios Ubuntu en el **Explorador de Archivos** de Windows:
- Abre el Explorador de Archivos de Windows (o usa el atajo `WIN` + `E`)
- En la Barra de Direcciones, coloca `\\wsl$\` (o `\\wsl$\Ubuntu` si eso no funciona)
- Ahora tienes acceso al sistema de archivos de Ubuntu
- Navega por el sistema de archivos de Ubuntu para encontrar los directorios que te interesen
- Arrastra las carpetas que te interesen a la Barra de Direcciones para crear atajos

![Cómo agregar un atajo al sistema de archivos de Ubuntu en Windows](images/windows_ubuntu_file_system_shortcut.gif)

### Abre el Explorador de Archivos de Windows desde la terminal de Ubuntu

Otra opción para mover archivos es abrir el **Explorador de Archivos** de Windows desde la terminal de Ubuntu:
- Abre una terminal de Ubuntu
- Ve al directorio que quieres explorar
- Ejecuta el comando `explorer.exe .` (Otra alternativa es usar `wslview .`)
- Si obtienes un mensaje de input output error, ejecuta `wsl --shutdown` en una PowerShell de Windows y abre la terminal de Ubuntu nuevamente

![Cómo abrir Windows Explorer desde la terminal de Ubuntu](images/windows_explorer_from_terminal.png)

### Uso del Sistema de Archivos de Ubuntu

Es posible que quieras averiguar la localización exacta de un directorio en Windows en el sistema de archivos de Ubuntu o viceversa.

Para convertir una ruta Windows a una Ubuntu y viceversa:
- Abre una terminal de Ubuntu
- Usa el comando `wslpath "C:\Program Files"` para traducir la ruta Windows a una Ubuntu
- Usa el comando `wslpath -w "/home"` para traducir una ruta Ubuntu a una Windows
- El comando `wslpath -w $(pwd)` devuelve la ruta Windows del directorio Ubuntu actual

![Cómo acceder a una ruta Windows desde una terminal de Ubuntu](images/windows_path_from_terminal.png)

### Anclaje de aplicaciones a tu barra de tareas

Usarás frecuentemente casi todas las aplicaciones que has instalado hoy. ¡Anclémoslas a tu barra de tareas para que estén a solo un clic de ti!

Para ello, abre la aplicación. Haz clic derecho en el ícono de la barra de tareas para hacer que aparezca el menú contextual (también llamado emergente) y selecciona "Pin to taskbar".

![Cómo anclar una aplicación a la barra de tareas en Windows](images/windows_taskbar.png)

Ancla lo siguiente:
- Tu terminal
- Tu explorador de archivos
- VS Code
- Tu navegador de Internet
- Slack
- Zoom


## ¡Fin de la configuración!

Tu computadora está lista para el [curso de Desarrollo Web de Le Wagon](https://www.lewagon.com/web-development-course/full-time) :muscle: :clap:

Disfrútalo, sabemos que te va a ir genial :rocket:


