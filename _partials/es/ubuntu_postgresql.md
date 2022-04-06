## PostgreSQL

En algunas semanas hablaremos de bases de datos y de SQL y necesitarás algo llamado [PostgreSQL](https://www.postgresql.org/). Es un sistema de base de datos de código abierto, robusto y listo para usar en producción.

Instálalo ejecutando los siguientes comandos:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb;"
```
