#!/bin/bash

# Check if the folder name argument is provided
if [ -z "$1" ]; then
    echo "Error: No se indicó el nombre del proyecto."
    echo "Usage: $0 <folder_name>"
    exit 1
fi

BASE_FOLDER="$1"
mkdir "$BASE_FOLDER"

# Crear estructura
mkdir "$BASE_FOLDER/datos"
mkdir "$BASE_FOLDER/figuras"
mkdir "$BASE_FOLDER/referencias"
mkdir "$BASE_FOLDER/scripts"
mkdir "$BASE_FOLDER/tablas"

# Crear archivos vacíos
touch "$BASE_FOLDER/readme.md"

echo "Proyecto creado"

# Pendientes: crear Makefile? Poner plantilla de proyecto en Readme?
