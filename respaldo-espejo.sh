#!/bin/bash

echo "===== Script de Respaldo (Modo Espejo) ====="
echo ""

# Preguntar carpeta origen
read -e -p "📂 Ingresa la ruta de la carpeta a respaldar:" origen

# Preguntar carpeta destino
read -e -p "💾 Ingresa la ruta del dispositivo de destino:" destino

# Validar si existen
if [ ! -d "$origen" ]; then
  echo "❌📂 La carpeta de origen no existe."
  exit 1
fi

if [ ! -d "$destino" ]; then
  echo "❌💾 El dispositivo de destino no existe."
  exit 1
fi

# Ejecutar respaldo en modo espejo
echo ""
echo "🔄 Iniciando respaldo en modo espejo..."
rsync -av --progress --update --delete "$origen" "$destino"

echo ""
echo "✅ Respaldo completado."
