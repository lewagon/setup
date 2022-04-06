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
