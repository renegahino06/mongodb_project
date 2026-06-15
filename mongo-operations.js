// Operaciones básicas en MongoDB para practicar en mongosh

// 1. Seleccionar o crear base de datos
use("biblioteca")

// 2. Insertar un documento en la colección "libros"
db.libros.insertOne({
  titulo: "Clean Code",
  autor: "Robert Martin",
  anno: 2008,
  categorias: ["programacion", "ingenieria"],
  disponible: true
})

// 3. Insertar varios documentos

// Ejecuta esto varias veces con diferentes valores para practicar

db.libros.insertMany([
  {
    titulo: "The Pragmatic Programmer",
    autor: "Andrew Hunt",
    anno: 1999,
    categorias: ["programacion"],
    disponible: true
  },
  {
    titulo: "Design Patterns",
    autor: "Erich Gamma",
    anno: 1994,
    categorias: ["arquitectura", "patrones"],
    disponible: false
  }
])

// 4. Consultas (Read)

// Todos los libros
db.libros.find()

// Filtrar por autor
db.libros.find({ autor: "Robert Martin" })

// Filtrar por año mayor o igual a 2000
db.libros.find({ anno: { $gte: 2000 } })

// Proyección (solo algunos campos)
db.libros.find({}, { titulo: 1, autor: 1, _id: 0 })

// 5. Actualizaciones (Update)

// Actualizar un campo específico
db.libros.updateOne(
  { titulo: "Clean Code" },
  { $set: { anno: 2009 } }
)

// Agregar una nueva categoría
db.libros.updateOne(
  { titulo: "Clean Code" },
  { $addToSet: { categorias: "buenas_practicas" } }
)

// 6. Eliminaciones (Delete)

// Eliminar un documento
// ATENCIÓN: Ejecuta con cuidado
db.libros.deleteOne({ titulo: "Design Patterns" })

// 7. Ejemplo de documento más complejo

// Ejemplo equivalente a un registro "empleado" en SQL
use("empresa")

db.empleados.insertOne({
  nombre: "Juan",
  edad: 30,
  habilidades: ["Python", "Podman"],
  contacto: {
    email: "juan@example.com",
    telefono: "555-1234"
  },
  activo: true
})

// Consulta

// Todos los empleados activos
db.empleados.find({ activo: true })
