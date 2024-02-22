#!/bin/bash

#########################################
#
# Nombre: c2f.sh
# Autor: Adrian Ibarra Faura
#
# Objetivo: convertir grados Celsius a Fahrenheit
#
# Entradas: Grados Celsius
# Salidas: Grados Fahrenheit
#
# Historial:
#   2023-12-08: versión 1
#   2024-01-08: versión 2 con soporte a Punto Flotante
#
#################################################


gradosC=$1
ndec=$2

ndecDEF=3




if [ $# -eq 0 ]
then
	echo "ERROR: No has indicado argumentos. Debes indicar 2 argumentos"
	echo "SINTAXIS: $0 <grados Fahrenheit> <num decimales>"
	exit 

elif [ $# -eq 1 ]
then
		echo "Sólo has indicado 1 argumento (ºF)."
		echo "Usaremos $ndecDEF decimales por defecto"
		ndec=$ndecDEF

elif [ $# -eq 2 ]
then
		echo "Perfecto!! Has indicado 2 argumentos"
else
	echo "Has indicado $# argumentos, sólo usaremos los dos primeros y se ignorará el resto"
fi

read -p "Introduzca un valor: " valor
echo "El dato leído es $valor"


gradosF=$(echo "scale=$ndec; $gradosC * 9 / 5 + 32" | bc )
echo "${gradosC}ºC son ${gradosF}ºF"



