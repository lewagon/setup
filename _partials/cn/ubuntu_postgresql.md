## PostgreSQL

在后面的几周里，我们将会学习数据库和SQL并且你会需要一个叫做[PostgreSQL](https://www.postgresql.org/)的软件，一个开源的强大的可供生产的数据库系统。

让我们现在一起安装它。

运行下方指令:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo -u postgres psql --command "CREATE ROLE `whoami` LOGIN createdb;"
```