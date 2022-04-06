## PostgreSQL

Sometimes, SQLite is not enough and we will need a more advanced tool called [PostgreSQL](https://www.postgresql.org/), an open-source robust and production-ready database system.

Let's install it now.

Run the following commands:

```bash
brew install postgresql
brew services start postgresql
```

Once you've done that, let's check that it worked:

```bash
psql -d postgres
```

If you enter a new prompt like this one, you're good!

```bash
psql (13.3)
Type "help" for help.

postgres=#
```

To quit it, type `\q` then `Enter`.
