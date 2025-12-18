## La versión de Windows

Antes de comenzar, necesitamos verificar que la versión de Windows instalada en tu computadora sea compatible con estas instrucciones de configuración.

### Windows 10 o Windows 11

> :warning: **Nota sobre Windows 10 y seguridad**
>
> La configuración del bootcamp de Le Wagon funciona en Windows 10. Dicho esto, recomendamos encarecidamente actualizar a Windows 11. Desde el 14 de octubre de 2025 Microsoft finalizó el soporte para Windows 10, lo que significa que ya no recibirá actualizaciones de seguridad y podría poner tu equipo en riesgo. Para más detalles, consulta la [guía de Microsoft](https://support.microsoft.com/en-us/windows/windows-10-support-has-ended-on-october-14-2025-2ca8b313-1946-43d3-b55c-2b95b107f281). Si tu equipo no puede ejecutar Windows 11, considera cambiar a Ubuntu.

Para poder configurar tu computadora, necesitas tener **Windows 10 o Windows 11** instalado.

Para chequear la versión de tu Windows:
- Presiona `Windows` + `R`
- Escribe  `winver`
- Presiona `Enter`

:heavy_check_mark: Si las primeras palabras de esta ventana son **Windows 11**, entonces todo está bien y puedes continuar trabajando en la configuración :+1:

:heavy_check_mark: Si las primeras palabras de esta ventana son **Windows 10**, verifica el **número de la versión**:

- :heavy_check_mark: Si dice al menos `2004`, entonces todo está bien :+1:

- :x: Si es inferior a `2004`, debes actualizar tu versión.

- <details>
  <summary>Cómo instalar las últimas actualizaciones?</summary>

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

  Verifica el número de la versión:

  - Presiona `Windows` + `R`
  - Escribe  `winver`
  - Presiona `Enter`

  :heavy_check_mark: Si dice al menos `2004`, entonces todo está bien :+1:

  :x: Si es inferior a `2004`, por favor **contacta a un profesor**.

  </details>
