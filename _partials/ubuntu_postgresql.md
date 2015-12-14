## Postgresql

In a few weeks, we'll talk about SQL and Databases and you'll need something called Postgresql,
an open-source robust and production-ready database. Let's install it now.

```
$ sudo apt-get install postgresql postgresql-contrib libpq-dev build-essential
$ sudo su - postgres
$ psql --command "CREATE ROLE `whoami` LOGIN createdb;"
$ exit
```
