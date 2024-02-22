#!/bin/bash

#########################################
#
# Nombre: ej15-rectangulo.sh
# Autor: Adrian Ibarra Faura
# Objetivo: 
#
# Entradas: 
# Salidas: 
#
# Historial:
#   2024-01-24: versión 1.0
#
#################################################


if [ "$#" -eq 0 ]; then
    base=7
    altura=4
elif [ "$#" -eq 1 ]; then
    base=$1
    altura=4
else
    base=$1
    altura=$2
fi

area=$((base * altura))

for (( i=1; i<=altura; i++ )); do
    for (( j=1; j<=base; j++ )); do
        echo -n "*"
    done
    echo    # salto de línea
done

echo "El área del rectángulo es $area"