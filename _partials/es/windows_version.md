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
