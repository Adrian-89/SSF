#!/bin/bash

#########################################
#
# NOMBRE: par_case.sh
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# OBJETIVO: Indicar si un número es par o impar
#
# ENTRADAS: elemento
# SALIDAS: si es par o impar
#
# HISTORIAL:
#   2024-01-12: versión 1
#
#################################################

numero=$1

case $numero in

	"") echo "ERROR, debes indicar un argumento" ;;
	*0|*2|*4|*6|*8) echo "$numero es un número par" ;;
	*[13579]) echo "$numero es un número impar" ;;
	e) echo "Has indicado un número irracional" ;;
	*) echo "ERROR, parece que $numero" NO es un número ;;
esac



