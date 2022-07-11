## PostgreSQL

A veces SQLite no es suficiente y necesitaremos una herramienta más avanzada llamada [PostgreSQL](https://www.postgresql.org/). Esta es un sistema para bases de datos de código abierto y listo para usar en producción.

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
psql (14.4)
Type "help" for help.

postgres=#
```

Para cerrarla, escribe `\q` y luego presiona `Enter`.
