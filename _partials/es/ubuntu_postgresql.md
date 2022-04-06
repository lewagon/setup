## PostgreSQL

A veces, SQLite no es suficiente y necesitaremos una herramienta más avanzada llamada [PostgreSQL](https://www.postgresql.org/), un sistema de base de datos de código abierto y listo para usar en producción.

Instálalo ejecutando los siguientes comandos:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```
