-- Ejemplo equivalente en PostgreSQL a algunos de los datos usados en MongoDB

-- Tabla libros (equivalente a db.libros)
CREATE TABLE libros (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(200) NOT NULL,
  autor VARCHAR(200) NOT NULL,
  anno INT,
  disponible BOOLEAN
);

INSERT INTO libros (titulo, autor, anno, disponible) VALUES
('Clean Code', 'Robert Martin', 2008, TRUE),
('The Pragmatic Programmer', 'Andrew Hunt', 1999, TRUE),
('Design Patterns', 'Erich Gamma', 1994, FALSE);

-- Nota: Las categorias (array en MongoDB) aquí podrían requerir una tabla aparte
-- para seguir buenas prácticas de normalización:
--
-- CREATE TABLE categorias (
--   id SERIAL PRIMARY KEY,
--   nombre VARCHAR(100) UNIQUE NOT NULL
-- );
--
-- CREATE TABLE libro_categoria (
--   libro_id INT REFERENCES libros(id),
--   categoria_id INT REFERENCES categorias(id),
--   PRIMARY KEY (libro_id, categoria_id)
-- );

-- Tabla empleados (equivalente a db.empleados)

CREATE TABLE empleados (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  edad INT,
  email VARCHAR(100),
  telefono VARCHAR(20),
  activo BOOLEAN
);

INSERT INTO empleados (nombre, edad, email, telefono, activo) VALUES
('Juan', 30, 'juan@example.com', '555-1234', TRUE);
