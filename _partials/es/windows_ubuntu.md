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
- Haz clic en `Get`

:warning: ¡NO instales **Ubuntu 18.04 LTS** ni **Ubuntu 20.04**!

<details>
  <summary>Desinstala las versiones incorrectas de Ubuntu</summary>

  Para desinstalar las versiones incorrectas de Ubuntu, solo tienes que ir a la Lista de Programas Instalados de Windows 10:
  - Presiona `Windows` + `R`
  - Escribe `ms-settings:appsfeatures`
  - Preiona `Enter`

  Busca el programa que desees desinstalar y haz clic en el botón de desinstalación.
</details>

Cuando termine la instalación, el botón `Get` se transformará en un botón `Open`: Haz clic en él.

### Primer uso

La primera vez que lo abras, te pedirán que:
- Escojas un **username** de:
    - una palabra
    - minúscula
    - sin caracteres especiales
    - por ejemplo: `lewagon` o tu `firstname`, es decir, tu primer nombre
- Escoge un **password**
- Confírmalo

:warning: Cuando escribas tu contraseña no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu contraseña como su longitud. Simplemente escribe tu contraseña y presiona `Enter` al terminar.

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
