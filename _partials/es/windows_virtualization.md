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
