## PostgreSQL

Sometimes, SQLite is not enough and we will need a more advanced tool called [PostgreSQL](https://www.postgresql.org/), an open-source robust and production-ready database system.

Let's install it now.

Run the following commands:

```bash
brew install postgresql@14
```

```bash
brew services start postgresql@14
```

Once you've done that, let's check that it worked:

```bash
psql -d postgres
```

You should you see a new prompt like this one :point_down:

```bash
psql (14.4)
Type "help" for help.

postgres=#
```

:heavy_check_mark: If this is the case, type `\q` then `Enter` to quit this prompt. You're good to go :+1:

:x: If not, please **ask for a teacher**
