#!/bin/bash

#########################################
#
# NOMBRE: ej11-calculadora.sh
# AUTOR: Adrian Ibarra Faura
#
# OBJETIVO: implementar una calculadora simple
#
# ENTRADAS: 2 valores 
# SALIDAS: Operación elegidas por usuario
#
# HISTORIAL:
#   2024-01-12: versión 1
#
#################################################

a=$1
b=$2

if [ $# -ne 2 ]
then
	echo "ERROR, debe indicar DOS valores"
	echo "SINTAXIS: $0 <valor1> <valor2>"
	exit
fi


PS3="Elija una de las opciones: "
select opcion in "Sumar sumando" "Restar" "Multiplicar" "Dividir" "Salir"
do

	case $opcion in

		"Sumar sumando") echo "El resultado de $a + $b = $(( a+b ))" ;;
		"Restar") echo "El resultado de $a - $b = $(( a-b ))" ;;
		"Multiplicar") echo "El resultado de $a * $b = $(( a*b ))" ;;
		"Dividir") echo "El resultado de $a / $b = $(( a/b ))" ;;
		"Salir") break ;;
		*) echo "ERROR, '$REPLY' es una opción incorrecta"
	esac
done

