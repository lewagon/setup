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

:warning: Cuando escribas tu passphrase, no verás nada en la pantalla. **Esto es normal**. Es una herramienta de seguridad para ocultar tanto el contenido de tu passphrase como su longitud. Simplemente escribe tu passphrase y presiona `Enter` al terminar.

### Comunicarle tu public key a GitHub

Ahora le vas a dar tu **public** key a GitHub.

En tu terminal copia y pega el siguiente comando:

```bash
gh auth refresh -s write:public_key
```

Mostrará una código una única vez (####-####) en la pantalla. Cópialo y presiona `Enter`. Luego pega el código en tu navegador y sigue las instrucciones para **Autorizar a GitHub**.

Vuelve a la terminal. Presiona `Enter` y ejecuta esto:

```bash
gh ssh-key add ~/.ssh/id_ed25519.pub
```

Eso debería devolver `✓ Public key added to your account`. Si no es el caso, no dudes **en pedirle ayuda a un profesor**.
