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

Deberías ver un nuevo mensaje como este :point_down:

```bash
psql (14.4)
Type "help" for help.

postgres=#
```

:heavy_check_mark: Si es asi, escribe `\q` y luego presiona `Enter` para cerrarla. Puede continuar :+1:

:x: Si no es el caso, **pídele ayuda a un profesor**
