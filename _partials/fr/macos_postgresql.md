## PostgreSQL

Parfois, SQLite n'est pas suffisant et nous aurons besoin d'un outil plus avancé appelé [PostgreSQL](https://www.postgresql.org/), un système de gestion de base de données adapté à la production, puissant et open source.

Installons-le maintenant.

Exécute les commandes suivantes :

```bash
brew install postgresql@14
brew services start postgresql@14
```

Une fois que c’est fait, on va vérifier que tout a bien fonctionné :

```bash
psql -d postgres
```

Tu devrais voir apparaître un nouveau message comme celui-ci :point_down:

```bash
psql (14.4)
Type "help" for help.

postgres=#
```

:heavy_check_mark: Si c'est le cas, saisis `\q` puis `Enter` pour quitter ce programme. Tu peux poursuivre :+1:

:x: Sinon, **demande au prof**
