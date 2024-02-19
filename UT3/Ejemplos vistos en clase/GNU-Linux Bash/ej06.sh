#!/bin/bash
############################################################
#
# Nombre: ej06.sh
# Autor: Adrián Ibarra Faura
#
# Objeivo: 
#
# Entradas:
# Salida:
#
# Historial:
#       2024-01-12: Version 1.0
#
#############################################################

segundos=$1
dias=$((segundos / 86400))
segundos=$((segundos % 86400))
horas=$((segundos / 3600))
segundos=$((segundos % 3600))
minutos=$((segundos / 60))
segundos=$((segundos % 60))


echo "Los $1 segundos introducidos son $dias días, $horas horas, $minutos minutos y $segundos segundos."

