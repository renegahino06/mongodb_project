#!/usr/bin/env bash

set -e

echo "[INFO] Creando volumen para datos persistentes de MongoDB..."
podman volume create mongo-data || true

echo "[INFO] Iniciando contenedor de MongoDB..."
podman run -d \
  --name mongo-db \
  -p 27017:27017 \
  -v mongo-data:/data/db \
  mongo:latest

echo "[INFO] Contenedores en ejecución:"
podman ps

echo "[OK] MongoDB está levantado en el puerto 27017."
echo "Puedes conectarte con: podman exec -it mongo-db mongosh"
