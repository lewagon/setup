## Postgresql

In a few weeks, we'll talk about SQL and Databases and you'll need something called Postgresql,
an open-source robust and production-ready database. Let's install it now.

```
$ sudo apt-get install -y postgresql postgresql-contrib libpq-dev build-essential
$ echo `whoami` > /tmp/caller
$ sudo su - postgres
$ psql --command "CREATE ROLE `cat /tmp/caller` LOGIN createdb;"
$ exit
$ rm -f /tmp/caller
```
