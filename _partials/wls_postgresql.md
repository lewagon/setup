## Postgresql

In a few weeks, we'll talk about SQL and Databases and you'll need something called Postgresql,
an open-source robust and production-ready database. Let's install it now.

```
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
sudo /etc/init.d/postgresql start
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```

The Linux subsystem is missing some parts that start services automatically when the system boots up. To configure this, you need to add those start-up lines manually to the file `/etc/rc.local`.

Open it via:

```bash
sudo nano /etc/rc.local
```

Use your arrow keys to navigate down to the line above `exit 0`.
Paste the following line:

```
sudo /etc/init.d/postgresql start
```

Press `Ctrl` + `X` for exit, and confirm to save the file with `Y`, and `Enter`. Depending on your localization `Y` might be `J`, or something else. If you are unsure, follow the on-screen instructions!
