#!/bin/bash
############################################################
#
# Nombre: ej05.sh
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


dias=$(( $1 * 86400 ))
horas=$(( $2 * 3600 ))
minutos=$(( $3 * 60 ))
segundos=$4
total=$(( $dias + $horas + $minutos + $segundos ))

# Imprime el resultado
echo "Los $1 días, $2 horas, $3 minutos y $4 segundos introducidos son $total segundos."

