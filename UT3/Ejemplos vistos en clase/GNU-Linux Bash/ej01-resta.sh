#!/bin/bash

#########################################
#
# Nombre: ej01-resta.sh
# Autor: Adrian Ibarra Faura
# Objetivo: hacer una resta
#
# Entradas: valores
# Salidas: resultado operación
#
# Historial:
#   2023-12-18: versión 1.0
#
#################################################



if [ "$#" -ne 2 ]; then
    echo "Error: Debes proporcionar dos valores."
    echo "SINTAXIS: $0 <valor1> <valor2>"
    exit
fi

a=$1
b=$2
c=$(($a-$b))
echo "la resta de $a y $b es $c"