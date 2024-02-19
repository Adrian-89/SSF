#!/bin/bash

#########################################
#
# Nombre: ej13-rutas.sh
# Autor: Adrian Ibarra Faura
# Objetivo: ejecutar el script ej09-info_ruta.sh para cada elemento del directorio actual que tenga más de 4 caracteres.
#
# Entradas: 
# Salidas: 
#
# Historial:
#   2024-01-24: versión 1.0
#
#################################################

elementos=$(find . -type d -name '????*')

for elemento in $elementos; do
    ./ej09-info_ruta.sh "$elemento"
done