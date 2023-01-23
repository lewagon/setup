## PostgreSQL

有的时候，SQLite功能会不够用。这个时候我们就需要使用一个更高级的工具，叫做[PostgreSQL](https://www.postgresql.org/)。这是一个开源的、强大的、生产环境可用的数据库系统。

让我们现在一起安装它。

运行下方指令:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"
```
