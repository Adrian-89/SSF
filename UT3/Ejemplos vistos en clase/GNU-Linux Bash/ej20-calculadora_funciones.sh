#!/bin/bash

#########################################
#
# Nombre: ej20-calculadora_func.sh
# Autor: Adrian Ibarra Faura
# Objetivo: 
#
# Entradas: 
# Salidas: 
#
# Historial:
#   2024-01-29: versión 1.0
#
#################################################

sumar() {
    echo "El resultado de $a + $b = $((a + b))"
}

restar() {
    echo "El resultado de $a - $b = $((a - b))"
}

multiplicar() {
    echo "El resultado de $a * $b = $((a * b))"
}

dividir() {
    echo "El resultado de $a / $b = $((a / b))"
    
}

exponenciar() {
    echo "El resultado de $a elevado a $b = $((a**b))"
}

resto() {
    echo "El resto de $a dividido entre $b = $((a%b))"
}

# verificar si son 2 argumentos
if [ $# -ne 2 ]; then
    echo "Error: Debes proporcionar dos valores."
    echo "SINTAXIS: $0 <valor1> <valor2>"
    exit 1
fi

# asign valores
a=$1
b=$2

# operaciones llamando a las funciones
select option in "Sumar" "Restar" "Multiplicar" "Dividir" "Exponenciar" "Resto" "Salir"
do
    case $option in
        "Sumar") sumar ;;
        "Restar") restar ;;
        "Multiplicar") multiplicar ;;
        "Dividir") dividir ;;
        "Exponenciar") exponenciar ;;
        "Resto") resto ;;
        "Salir") break ;;  # finalizar el script
        *) echo "Error: Opción incorrecta." ;;
    esac
done