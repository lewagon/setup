## Parámetros de Ubuntu

### Instala video codec H264

Tenemos algunos videos en nuestra plataforma pedagógica (Kitt. ¡La descubrirás pronto!). La configuración predeterminada de Firefox en Linux no permite reproducirlos ya que usan un codec (H264) que no está soportado. Para que funcionen los videos debes ejecutar lo siguiente:

```bash
sudo apt install libavcodec-extra -y
```

### Instalación de herramientas útiles de terminal

`tree` es buena para visualizar un árbol de directorio dentro de la terminal:

`ncdu` es para discos con interfaz en modo texto.

`htop` nos muestra procesos de forma interactiva.

`tig` es una interfaz en modo texto para `git`.

```bash
sudo apt install tree ncdu htop tig
```

### Ubuntu inotify

Ubuntu siempre le hace seguimiento a los cambios en tus carpetas para eso usa inotify.
El límite predeterminado de monitoreo de Ubuntu es 8192 archivos.

Necesitamos aumentar este límite ya que la programación requiere de muchos archivos.
Ejecuta lo siguiente en tu terminal:

```bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

### Anclaje de aplicaciones a tu dock

Usarás frecuentemente casi todas las aplicaciones que has instalado hoy. ¡Anclémoslas a tu dock para que estén a solo un clic de ti!

Para ello, abre la aplicación. Haz clic derecho en el ícono de la barra de tareas para hacer que aparezca el menú contextual (también llamado emergente). Selecciona "Options" y después "Keep in Dock".

![Cómo anclar una aplicación a la barra de tareas en macOS](images/ubuntu_dock.png)

Ancla lo siguiente:
- Tu terminal
- Tu explorador de archivos
- VS Code
- Tu navegador de Internet
- Slack
- Zoom
