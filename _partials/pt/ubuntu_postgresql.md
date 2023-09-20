## PostgreSQL

Às vezes, o SQLite não é suficiente e precisaremos de uma ferramenta mais avançada chamada [PostgreSQL](https://www.postgresql.org/), um sistema de banco de dados de código aberto, robusto e pronto para produção.

Vamos instalá-lo agora.

Execute os seguintes comandos:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"
```
