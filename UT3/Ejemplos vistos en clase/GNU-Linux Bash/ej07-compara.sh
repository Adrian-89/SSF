#!/bin/bash

#########################################
#
# NOMBRE: ej07-compara.sh
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# OBJETIVO: comparar dos números
#
# ENTRADAS: 2 argumentos (números a comparar)
# SALIDAS: indica qué número es mayor, o si son iguales
#
# HISTORIAL:
#   2023-12-09: versión 1
#
#################################################

a=$1
b=$2

# Compruebo que me han pasado los argumentos, y si no, los 
# pido por teclado
if [ "$a" = "" ]
then
	read -p "Por favor, introduzca el primer valor: " a
fi

if [ -z "$b" ]
then
	read -p "Por favor, introduzca el segundo valor: " b
fi

# Compruebo qué número es mayor

if [ "$a" -gt "$b" ]
then
	echo "$a es mayor que $b"
elif [ "$a" -lt "$b" ]
then
	echo "$b es mayor que $a"
else
	echo "Los dos números son iguales"
fi



