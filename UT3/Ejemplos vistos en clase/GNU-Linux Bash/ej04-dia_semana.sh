#!/bin/bash

#########################################
#
# Nombre: ej04-dia_semana.sh
# Autor: Adrian Ibarra Faura
# Objetivo: indicar qué día de la semana es una fecha concreta
#
# Entradas: 3 argumentos -> 1:día, 2:mes, 3:año
# Salidas: día de la semana
#
# Historial:
#   2024-01-09: versión 1.0
#
#################################################

dia=$1
mes=$2
anyo=$3

dia_sem=$(date -d $anyo-$mes-$dia +"%A")

echo "El día $dia/$mes/$anyo es $dia_sem"



