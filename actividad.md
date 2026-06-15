# Actividad práctica: MongoDB en contenedor Podman y comparativa con PostgreSQL

## Objetivo de la actividad

Al finalizar esta actividad deberás ser capaz de:

- Levantar un contenedor de MongoDB usando Podman.
- Crear y consultar colecciones y documentos en MongoDB.
- Comparar la forma de almacenar los mismos datos en MongoDB y en PostgreSQL.
- Redactar un breve análisis comparativo entre una base de datos NoSQL y una relacional.

## Instrucciones

1. Clona o copia este proyecto en tu máquina.

2. Da permisos de ejecución al script `install-mongo.sh` y ejecútalo:

   ```bash
   chmod +x install-mongo.sh
   ./install-mongo.sh
   ```

3. Verifica que el contenedor está en ejecución:

   ```bash
   podman ps
   ```

4. Conéctate a MongoDB dentro del contenedor:

   ```bash
   podman exec -it mongo-db mongosh
   ```

5. En `mongosh`, selecciona la base de datos `biblioteca` y ejecuta algunas de las operaciones que están en el archivo `mongo-operations.js` (copia y pega los bloques de código y observa los resultados).

6. Cambia a la base de datos `empresa` y crea al menos 3 documentos en la colección `empleados` con campos similares (nombre, edad, habilidades, contacto, activo). Realiza al menos 3 consultas con filtros diferentes.

7. Abre el archivo `postgresql-comparison.sql` y analiza cómo se representarían esos mismos datos en tablas SQL. Si tienes acceso a un servidor PostgreSQL, ejecuta el script y verifica las tablas creadas.

8. Lee el archivo `comparativa.md` para reforzar los conceptos de diferencia entre MongoDB (NoSQL) y PostgreSQL (SQL).

9. Entregable: redacta un reporte breve (unas 300–500 palabras) donde expliques:

   - Cómo levantaste MongoDB en Podman (comandos principales).
   - Qué colecciones y documentos creaste.
   - Ejemplos de consultas que realizaste.
   - Cuáles son, en tu opinión, las principales diferencias entre almacenar datos en MongoDB vs PostgreSQL.
   - Un ejemplo de caso de uso donde preferirías MongoDB y otro donde preferirías PostgreSQL.

10. Opcional (para puntos extra): Crea un pequeño script en el lenguaje de tu preferencia (por ejemplo, Python o Shell) que inserte automáticamente varios documentos en MongoDB usando la línea de comandos o un driver.
