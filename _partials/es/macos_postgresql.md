## PostgreSQL

En algunas semanas hablaremos de bases de datos y de SQL y necesitarás algo que se llama [PostgreSQL](https://www.postgresql.org/), un sistema de base de datos de código abierto y listo para usar en producción.

Vamos a instalarlo ahora.

Ejecuta los siguientes comandos:

```bash
brew install postgresql
brew services start postgresql
```

Cuando termines, verifica que funcione:

```bash
psql -d postgres
```

¡Si no tienes ningún problema para agregar algo como esto de aquí abajo, todo está bien!

```bash
psql (13.3)
Type "help" for help.

postgres=#
```

Para cerrarla, escribe `\q` y luego presiona `Enter`.
