## PostgreSQL

Às vezes, o SQLite não é suficiente e precisaremos de uma ferramenta mais avançada chamada [PostgreSQL](https://www.postgresql.org/), um sistema de banco de dados de código aberto, robusto e pronto para produção.

Vamos instalá-lo agora.

Execute os seguintes comandos:

```bash
brew install postgresql@15 libpq
brew link --force libpq
```

```bash
brew services start postgresql@15
```

Depois de fazer isso, vamos verificar se funcionou:

```bash
psql -d postgres
```

Você deverá ver um novo prompt como este: point_down:

```bash
psql (15.2)
Type "help" for help.

postgres=#
```

:heavy_check_mark: Se for esse o caso, digite `\q` e depois `Enter` para sair deste prompt. Você está pronto para ir: +1:

:x: Se não, por favor ** peça um professor **
