## PostgreSQL

A veces, SQLite no es suficiente y necesitaremos una herramienta más avanzada llamada [PostgreSQL](https://www.postgresql.org/), un sistema de base de datos de código abierto y listo para usar en producción.

Vamos a instalarlo ahora.

Ejecuta los siguientes comandos:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo /etc/init.d/postgresql start
```

```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

Puedes configurar PostgreSQL para que inicie automáticamente para no tener que ejecutar el comando `sudo /etc/init.d/postgresql start` cada vez que abras una nueva terminal:

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```

```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```

```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```

Abre una nueva terminal.

:heavy_check_mark: Si ves un mensaje `* Starting PostgreSQL 12 database server`, entonces todo está bien y puedes continuar :+1:

:x: Si no es el caso, **contacta a un profesor**.
