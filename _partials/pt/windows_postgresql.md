## PostgreSQL

Às vezes, o SQLite não é suficiente e precisaremos de uma ferramenta mais avançada chamada [PostgreSQL](https://www.postgresql.org/), um sistema de banco de dados de código aberto, robusto e pronto para produção.

Vamos instalá-lo agora.

Execute os seguintes comandos:

```bash
sudo apt install -y postgresql postgresql-contrib libpq-dev build-essential
```

```bash
sudo /etc/init.d/postgresql start
```

```bash
sudo -u postgres psql --command "CREATE ROLE \"`whoami`\" LOGIN createdb superuser;"
```

Você pode configurar o PostgreSQL para inicialização automática, para que não precise executar `sudo /etc/init.d/postgresql start` cada vez que abrir um novo terminal:

```bash
sudo echo "`whoami` ALL=NOPASSWD:/etc/init.d/postgresql start" | sudo tee /etc/sudoers.d/postgresql
```

```bash
sudo chmod 440 /etc/sudoers.d/postgresql
```

```bash
echo "sudo /etc/init.d/postgresql start" >> ~/.zshrc
```

Abra um novo terminal.

:heavy_check_mark: Se você vir uma mensagem `* Starting postgresql (via systemctl): postgresql.service`, você está pronto para prosseguir :+1:

:x: Caso contrário, **entre em contato com um professor**.
