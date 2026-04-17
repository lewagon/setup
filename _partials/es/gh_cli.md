## GitHub CLI

CLI es una abreviación de [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface) que significa interfaz de línea de comando.

En esta sección usaremos [GitHub CLI](https://cli.github.com/) para interactuar directamente con GitHub desde la terminal.

Usaremos la GitHub CLI (`gh`) para conectarnos a GitHub utilizando *SSH*, un protocolo para iniciar la sesión utilizando claves SSH en lugar de la famosa pareja nombre de usuario y contraseña.

Ya debería haberse instalado en tu computadora con los comandos que ejecutaste anteriormente.

Lo primero que hay que hacer para **iniciar sesión** es copiar y pegar el comando siguiente en tu terminal:

:warning: **NO edites el `email`** — Aunque `user:email` parezca un marcador de posición para tu dirección de correo real, no lo es — no lo reemplaces.

```bash
gh auth login -s 'user:email' -w --git-protocol ssh
```

`gh` le hará algunas preguntas:

- `Generate a new SSH key to add to your GitHub account?` Presiona `Enter` para pedirle a gh que genere las claves SSH por ti.

  Si ya tienes claves SSH, verás en su lugar `Upload your SSH public key to your GitHub account?`Con las flechas, selecciona la ruta de tu archivo de clave pública y pulsa `Intro`.

- `Enter a passphrase for your new SSH key (Optional)`:
  - **PARA LA MAYORÍA DE LOS ESTUDIANTES:** Simplemente presiona `Enter` para omitir. No necesitas una contraseña para el bootcamp y te la pediría cada vez que uses la clave. Sin embargo, hay un riesgo de que si alguien roba tu computadora, pueda subir código a GitHub.
  - **SI LA SEGURIDAD ES MUY IMPORTANTE PARA TI:** Escribe una contraseña de tu elección y presiona `Enter`. Es _muy_ importante que si introduces una contraseña, la anotes en algún lugar inmediatamente y no la pierdas ni la olvides. Tendrás que introducirla con frecuencia.

- `Title for your SSH key`. Puede dejarlo en la propuesta "GitHub CLI", presiona `Enter`.

Obtendrás el siguiente resultado:

```bash
! First copy your one-time code: 0EF9-D015
- Press Enter to open github.com in your browser...
```

Selecciona y copia el código (`0EF9-D015` en el ejemplo) y luego presiona `Enter`.

Tu navegador se abrirá y te pedirá que autorices GitHub CLI para usar tu cuenta GitHub. Acepta y espera un poco.

Regresa a la terminal, presiona `Enter` nuevamente y listo. Eso es todo.

Para verificar que están conectado correctamente, escribe lo siguiente:

```bash
gh auth status
```

:heavy_check_mark: Si obtienes este mensaje: `Logged in to github.com as <YOUR USERNAME> `, significa que todo está bien :+1:

:x: De lo contrario, **contacta a un profesor**.
