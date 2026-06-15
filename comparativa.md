# Comparativa: MongoDB (NoSQL) vs PostgreSQL (SQL)

## Modelo de datos

- MongoDB: Usa documentos en formato BSON (similar a JSON). Cada documento puede tener campos diferentes y estructuras anidadas.
- PostgreSQL: Usa tablas con filas y columnas. La estructura (esquema) se define antes de insertar datos.

## Esquema

- MongoDB: Esquema flexible. Una colección puede contener documentos con distintos campos.
- PostgreSQL: Esquema rígido. Las tablas tienen columnas definidas y tipos de datos fijos.

## Lenguaje de consultas

- MongoDB: Usa una sintaxis basada en JSON y operadores específicos en `mongosh`.
- PostgreSQL: Usa SQL estándar (SELECT, INSERT, UPDATE, DELETE, JOIN, etc.).

## Relaciones

- MongoDB: Se manejan mediante documentos embebidos o referencias manuales. No hay JOINs nativos como en SQL.
- PostgreSQL: Soporta relaciones entre tablas mediante llaves foráneas y operaciones JOIN.

## Escalabilidad

- MongoDB: Diseñado para escalabilidad horizontal (sharding, partición de datos entre nodos).
- PostgreSQL: Tradicionalmente se escala de forma vertical, aunque existen extensiones y soluciones para escalamiento horizontal.

## Casos de uso típicos

- MongoDB: Ideal para datos semiestructurados, cambios frecuentes de esquema, aplicaciones que evolucionan rápido, almacenamiento de documentos, catálogos flexibles, APIs.
- PostgreSQL: Ideal para aplicaciones que requieren integridad referencial fuerte, transacciones complejas, reportes y analítica estructurada.
