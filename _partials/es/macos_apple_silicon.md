## Chips de Apple Silicon

Si compraste tu computadora a finales del 2020, es posible que tenga un nuevo chip llamado Apple silicon en lugar de un procesador Intel: averigüémoslo.

Abre una nueva ventana de tu terminal desde Applications > Utilities o búscala con [Spotlight](https://support.apple.com/en-gb/HT204014):

![Abre la Terminal en macOS](images/macos_open_terminal.png)

Copia y pega el siguiente comando en la terminal y presiona `Enter` para ejecutarlo.

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lewagon/setup/master/utils/macos_list_processor_type.sh)"
```

☝️ El resultado de ese comando debería indicarte si tu computadora tiene Apple Silicon.

Si tu computadora usa Apple Silicon, expande el párrafo de abajo y léelo. Si no es el caso, ignóralo.

<details>
  <summary>👉&nbsp;&nbsp;Configuración para Apple Silicon 👈</summary>

### Desinstalación de Homebrew

Debemos desinstalar homebrew en caso de que una versión nativa ya haya sido instalada.

Ejecuta este comando en la terminal:

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
```

Si brew no fue instalado, obtendrás el mensaje `brew: command not found!`

### Configuración de la Terminal para Rosetta

Abre la aplicación Finder (o búscala con [Spotlight](https://support.apple.com/en-gb/HT204014)).

Ve a Applications > Utilities.

Duplica la app de la terminal (selecciónala y luego presiona `Cmd` + `C`, `Cmd` + `V`) y cámbiale el nombre a la copia por Terminal Rosetta.

Presiona `Cmd` + `I` en la aplicación Terminal Rosetta y luego selecciona la casilla "Open using Rosetta".

⚠️ De ahora en adelante durante el bootcamp cuando te pidan que abras una Terminal, abrirás la aplicación **Terminal Rosetta**.

</details>
