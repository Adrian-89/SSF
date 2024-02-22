###########################################
# 
# Nombre: ej08-imc.sh
# Autor: Adrian Ibarra Faura
#
# Objetivo: Calcular el IMC 
# 
# Entradas: Altura y peso 
# Salidas: IMC y diagnóstico
#
# Historial:
#   2024-02-04: versión 1
#
############################################

if [ "$#" -ne 2 ]; then
    echo "ERROR: Debes escribir dos argumentos:"
    echo "SINTAXIS REQUERIDA: $0 <altura_en_cm> <peso_en_kg>"
    exit
fi

altura="$1"
peso="$2"


IMC=$((10000 * peso / (altura * altura)))
echo "Tu IMC es $IMC"

if ((IMC < 16))
then
    echo "Delgadez severa"
elif ((IMC <= 16.99))
then
    echo "Delgadez moderada"
elif ((IMC <= 18.49))
then
    echo "Delgadez leve"
elif ((IMC <= 24.99))
then
    echo "Peso Normal"
elif ((IMC <= 29.99))
then
    echo "Sobrepeso"
elif ((IMC <= 34.99))
then
    echo "Obesidad leve"
elif ((IMC <= 39.99))
then
    echo "Obesidad media"
else
    echo "Obesidad severa"
fi