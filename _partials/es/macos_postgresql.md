## PostgreSQL

A veces, SQLite no es suficiente y necesitaremos una herramienta más avanzada llamada [PostgreSQL](https://www.postgresql.org/). Es un sistema de base de datos de código abierto, robusto y listo para usar en producción.

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
