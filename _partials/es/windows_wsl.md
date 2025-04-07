## Subsistema de Windows para Linux (WSL)

WSL es el ambiente de entorno que estamos usando para usar Ubuntu. Puedes aprender más sobre WSL [aquí](https://docs.microsoft.com/en-us/windows/wsl/faq).

Instalaremos WSL 2 y Ubuntu con un comando a través de la Windows Command Prompt.

:warning: en esta instrucción, utiliza el atajo `Ctrl` + `Shift` + `Enter` para usar la **Windows Command Prompt** con privilegios de administrador en lugar de simplemente hacer clic en `Ok` o presionar `Enter`.

- Presiona `Windows` + `R`
- Escribe `cmd`
- Presiona **`Ctrl` + `Shift` + `Enter`**

:warning: tal vez tengas que aceptar la confirmación UAC sobre el cambio en los privilegios.

Un ventana de terminal aparecerá:
- Copia el siguiente comando (`Ctrl` + `C`)
- Pégalo en la ventana de la terminal (`Ctrl` + `V` o haciendo clic derecho en la ventana)
- Ejecútalo presionado `Enter`

```powershell
wsl --install
```

:heavy_check_mark: Si el comando se ejecutó sin ningún error, por favor reinicia tu computadora y continúa con las siguientes instrucciones aquí abajo :+1:

:x: Si obtienes un mensaje de error (o si ves algún texto en rojo en la ventana), por favor **contacta a un profesor**

<details>
<summary>Solución de problemas para Windows 10 (solo si es necesario, consulta con un profesor)</summary>

#### Para Windows 10 < 2004: instala primero WSL 1

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

#### Para Windows 10 con WSL 1: Actualización a WSL 2

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

#### Para Windows 10 con WSL 1: Coloca WSL 2 como el Subsistema Windows por defecto para Linux

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

  :information_source: Si tienes Windows 10 **Home edition**, la feature Hyper-V no está disponible para su sistema operativo. No es un bloqueo y puedes continuar con las siguientes instrucciones aquí abajo :ok_hand:
</details>

</details>
