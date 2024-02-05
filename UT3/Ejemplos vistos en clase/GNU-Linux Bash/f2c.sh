#!/bin/bash

#########################################
#
# Nombre: f2c.sh
# Autor: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# Objetivo: convertir grados Fahrenheit a grados Celsius
#
# Entradas: grados Fahrenheit
# Salidas: grados Celsius
#
# Historial:
#   2023-12-19: versión 1
#
#################################################

echo "$1ºF son $(( ($1 - 32) * 5 / 9 ))ºC"
