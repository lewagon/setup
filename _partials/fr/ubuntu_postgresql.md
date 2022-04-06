## PostgreSQL

Parfois, SQLite n'est pas suffisant et nous aurons besoin d'un outil plus avancé appelé [PostgreSQL](https://www.postgresql.org/), un système de gestion de base de données adapté à la production, puissant et open source.

Installons-le maintenant.

Exécute les commandes suivantes :

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb;"
```
