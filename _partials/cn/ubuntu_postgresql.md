## PostgreSQL

In a few weeks, we'll talk about SQL and Databases and you'll need something called PostgreSQL,
an open-source robust and production-ready database. Let's install it now.

```
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```
