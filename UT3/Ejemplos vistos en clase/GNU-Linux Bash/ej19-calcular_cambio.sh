#!/bin/bash

#########################################
#
# Nombre: ej19_calcular_cambio.sh
# Autor: Adrian Ibarra Faura
# Objetivo: 
#
# Entradas: 
# Salidas: 
#
# Historial:
#   2024-01-25: versión 1.0
#
#################################################


if [ "$#" -ne 1 ]; then
    echo "ERROR: Debes escribir un valor (numérico), el precio del artículo!"
    exit
fi
precio_articulo=$1

billetes=(500 200 100 50 20 10 5 2 1)

read -p "Indique el dinero pagado: " dinero_entregado

cambio_dinero=$((dinero_entregado - precio_arti))

echo "Se ha comprado un artículo de $precio_arti euros y ha pagado $dinero_entregado euros."
echo "El cambio son $cambio_dinero euro(s), debe entregar:"

for billete in "${billetes[@]}"; do
    numero_billete=$((cambio / billete))
    if [ "$numero_billete" -gt 0 ]; then
        echo "$numero_billete billete(s) de $billete euro(s)"
        cambio_dinero=$((cambio - numero_billete * billete))
    fi
done