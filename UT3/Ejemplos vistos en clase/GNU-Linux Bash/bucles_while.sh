#!/bin/bash

#########################################
#
# NOMBRE: bucles_while.sh
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# OBJETIVO: ejemplos simples de bucles en scripts
#
#
# HISTORIAL:
#   2024-01-15: versión 1
#
#################################################

i=0
while [ "$i" -lt 10 ]
do
	echo "El valor de i es $i"
	#i=$((i+1))
	((i++))
done

i=0

# while [[  ]]
# while ((i < 10))


i=0
until [ "$i" -gt 10 ]
do
	echo "El valor de i es $i"
	#i=$((i+1))
	((i++))
done


# Ejemplo de uso del break y continue (EVITARLO SIEMPRE QUE SEA POSIBLE!!)
while true 
do
        read -p "Dime un valor mayor entre 10 y 20: " val
        if [ "$val" -ge 10 ] && [ "$val" -le 20 ]
	then
                echo "Correcto"
                break
        else
                echo "Noooo!!!"
                continue
        fi
        echo "Este mensaje NUNCA se imprimirá"
done




