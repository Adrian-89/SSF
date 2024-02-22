#!/bin/bash

#########################################
#
# Nombre: ej12-multiplo.sh
# Autor: Adrian Ibarra Faura
# Objetivo: Dar con los multiplos
#
# Entradas: 1 o dos valores
# Salidas: es o no multiplo
#
# Historial:
#   2024-01-21: versión 1.0
#
#################################################
if [ "$#" -eq 0 ]; then
    echo "ERROR!!!: Escribe al menos un número como argumento."
    exit 
fi

read -p "Introduzca un valor: " valor

for num in $@
do
    resto=$((num%$valor))
    
    if [ "$resto" -eq 0 ]
    then
        echo "El número $num es múltiplo de $valor"
    else
        echo "El número $num no es múltiplo de $valor"
    fi
done