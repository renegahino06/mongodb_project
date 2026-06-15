# mongodb_project
Introducción a Bases de Datos NoSQL con MongoDB y Podman
# Proyecto: Introducción a Bases de Datos NoSQL con MongoDB y Podman

Este proyecto tiene como objetivo que practiques la instalación y el uso básico de una base de datos NoSQL (**MongoDB**) ejecutándola dentro de un contenedor **Podman**, y que compares su funcionamiento con una base de datos relacional como **PostgreSQL**.

## Objetivos de aprendizaje

- Ejecutar MongoDB dentro de un contenedor Podman.
- Realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre colecciones y documentos.
- Comprender la diferencia entre documentos (NoSQL) y tablas (SQL).
- Comparar casos de uso típicos para bases de datos NoSQL vs relacionales.

## Requisitos previos

- Conocimientos básicos de Linux y línea de comandos.
- Podman instalado y funcionando.
- Opcional: Cliente de PostgreSQL instalado para la parte comparativa.

## Estructura del proyecto

- `install-mongo.sh`: Script para crear el volumen y levantar el contenedor de MongoDB con Podman.
- `mongo-operations.js`: Ejemplos de operaciones CRUD en MongoDB usando `mongosh`.
- `postgresql-comparison.sql`: Ejemplo de cómo almacenar datos equivalentes en PostgreSQL.
- `comparativa.md`: Resumen de diferencias entre MongoDB (NoSQL) y PostgreSQL (SQL).
- `actividad.md`: Instrucciones de la actividad práctica a entregar.

## Pasos rápidos

1. Dar permisos de ejecución al script:

   ```bash
   chmod +x install-mongo.sh
   ```

2. Ejecutar el script para levantar el contenedor de MongoDB:

   ```bash
   ./install-mongo.sh
   ```

3. Conectarte a MongoDB dentro del contenedor:

   ```bash
   podman exec -it mongo-db mongosh
   ```

4. Ejecutar los ejemplos de `mongo-operations.js` de forma interactiva en `mongosh`.

5. Revisar `postgresql-comparison.sql` para ver la versión equivalente en SQL.

6. Leer `comparativa.md` y completar la actividad descrita en `actividad.md`.
