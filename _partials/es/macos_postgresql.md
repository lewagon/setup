## PostgreSQL

A veces SQLite no es suficiente y necesitaremos una herramienta más avanzada llamada [PostgreSQL](https://www.postgresql.org/). Esta es un sistema para bases de datos de código abierto y listo para usar en producción.

Vamos a instalarlo ahora.

Ejecuta los siguientes comandos:

```bash
brew install postgresql@15 libpq
brew link --force libpq
```

```bash
brew services start postgresql@15
```

Cuando termines, verifica que funcione:

```bash
psql -d postgres
```

Deberías ver un nuevo mensaje como este :point_down:

```bash
psql (15.2)
Type "help" for help.

postgres=#
```

:heavy_check_mark: Si es asi, escribe `\q` y luego presiona `Enter` para cerrar el programa. Puede continuar :+1:

:x: Si no, **pídele ayuda a un profesor**
