## Conexión de tu navegador predeterminado con Ubuntu

Para asegurarnos de que puedas interactuar desde la terminal de Ubuntu con el navegador que tienes instalado en Windows, debemos definirlo como tu navegador predeterminado aquí.

:warning: Tienes que ejecutar al menos uno de los siguientes comandos:

<details>
  <summary>Google Chrome como tu navegador predeterminado</summary>

  Ejecuta este comando:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe
  ```

  Si obtienes un error como este `ls: cannot access...` corre el siguiente comando:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```

  Si no es el caso, ejecuta lo siguiente:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
  <summary>Mozilla Firefox como tu navegador predeterminado</summary>

  Ejecuta el siguiente comando:

  ```bash
    ls /mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe
  ```

  Si obtienes un error como este `ls: cannot access...` corre el siguiente comando:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```

  Si no es el caso, ejecuta lo siguiente:

  ```bash
    echo "export BROWSER='\"/mnt/c/Program Files (x86)/Mozilla Firefox/firefox.exe\"'" >> ~/.zshrc
  ```
</details>

<details>
  <summary>Microsoft Edge como tu navegador predeterminado</summary>

  Ejecuta el siguiente comando:

  ```bash
  echo "export BROWSER='\"/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe\"'" >> ~/.zshrc
  ```
</details>

Reinicia tu terminal.

Luego asegúrate de que el siguiente comando devuelva "Browser defined 👌":

```bash
[ -z "$BROWSER" ] && echo "ERROR: please define a BROWSER environment variable ⚠️" || echo "Browser defined 👌"
```

Si no lo hace pero

:heavy_check_mark: sí obtienes este mensaje, puedes continuar :+1:

:x: De lo contrario, escoge un navegador de la lista de arriba y ejecuta el comando correspondiente. Luego no olvides reiniciar tu terminal:

```bash
exec zsh
```

No dudes en **pedirle ayuda a tu profesor**.
