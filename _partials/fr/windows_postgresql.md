## PostgreSQL

Parfois, SQLite n'est pas suffisant et nous aurons besoin d'un outil plus avancé appelé [PostgreSQL](https://www.postgresql.org/), un système de gestion de base de données adapté à la production, puissant et open source.

Installons-le maintenant.

Exécute les commandes suivantes :

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo /etc/init.d/postgresql start
```

```bash
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb;"
```

Tu peux configurer le démarrage automatique de PostgreSQL afin de ne pas avoir à exécuter `sudo /etc/init.d/postgresql start` chaque fois que tu ouvres un nouveau terminal :

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```

```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```

```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```

Ouvre un nouveau terminal.

:heavy_check_mark: Si tu vois apparaître le message `* Starting PostgreSQL 12 database server`, c’est bon :+1:

:x: Sinon, **demande au prof**.
