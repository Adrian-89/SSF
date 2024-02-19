#!/bin/bash

#########################################
#
# Nombre: f2c.sh
# Autor: Adrian Ibarra Faura
#
# Objetivo: Convertir grados Fahrenheit a grados Celsius
#
# Entradas: Grados Fahrenheit
# Salidas: Grados Celsius
#
# Historial:
#   2023-12-19: versión 1
#
#################################################

echo "$1ºF son $(( ($1 - 32) * 5 / 9 ))ºC"
