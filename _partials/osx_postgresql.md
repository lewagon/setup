## Postgresql

In a few weeks, we'll talk about SQL and Databases and you'll need something called Postgresql,
an open-source robust and production-ready database. Let's install it now.

```bash
$ brew update
$ brew install postgresql
$ mkdir -p ~/Library/LaunchAgents
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

Once you've done that, let's check if it worked:

```bash
$ psql -d postgres
```

If you enter a new prompt like this one, you're good!

```bash
psql (9.4.4)
Type "help" for help.

postgres=#
```

To quit it, type `\q` then `Enter`.
