## PostgreSQL

Dans quelques semaines, on abordera les bases de données et le SQL, et tu auras besoin de [PostgreSQL](https://www.postgresql.org/), un système de gestion de base de données adapté à la production, puissant et open source.

On va l’installer.

Exécute les commandes suivantes :

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```
