## PostgreSQL

Sometimes, SQLite is not enough and we will need a more advanced tool called [PostgreSQL](https://www.postgresql.org/), an open-source robust and production-ready database system.

Let's install it now.

Run the following commands:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo /etc/init.d/postgresql start
```

```bash
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"
```

<details>

If you get an error saying `could not change directory to "/home/your_name": Permission denied` that is fine.
If on the first run it says `CREATE ROLE` in the end all worked fine.

</details>

You can configure PostgreSQL to autostart, so you don't have to execute `sudo /etc/init.d/postgresql start` each time you open a new terminal:

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```

```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```

```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```

Open a new terminal.

:heavy_check_mark: If you see a `* Starting postgresql (via systemctl): postgresql.service` message, you're good to go :+1:

:x: If not, **contact a teacher**.
