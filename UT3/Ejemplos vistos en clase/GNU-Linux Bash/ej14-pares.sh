#!/bin/bash

#########################################
#
# Nombre: ej14-pares.sh
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


num1=$1
num2=$2

while [ -z "$num1" ] || [ -z "$num2" ]
do
    read -p "Escribe el primer valor: " num1
    read -p "Escribe el segundo valor: " num2
done



if [ "$num1" -gt "$num2" ]; then
    guardadovalor=$num1
    num1=$num2
    num2=$guardadovalor
fi



for num in $(seq $num1 $num2)
do
  if [ $((num%2)) -eq 0 ]
  then
    elevado_cuadrado=$((num * num))
    echo "El cuadrado del número $num es $elevado_cuadrado"
  fi
done
