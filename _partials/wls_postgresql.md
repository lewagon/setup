## Postgresql

In a few weeks, we'll talk about SQL and Databases and you'll need something called Postgresql,
an open-source robust and production-ready database. Let's install it now.

```bash
sudo apt-get install -y postgresql postgresql-contrib libpq-dev build-essential
sudo /etc/init.d/postgresql start
echo `whoami` > /tmp/caller
sudo su - postgres
psql --command "CREATE ROLE `cat /tmp/caller` LOGIN createdb;"
exit
rm -f /tmp/caller
```

You can configure PostgreSQL to autostart, so you don't have to execute `sudo /etc/init.d/postgresql start` each time you open a new terminal:

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
sudo chmod 440 /etc/sudoers.d/postgresql
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```

