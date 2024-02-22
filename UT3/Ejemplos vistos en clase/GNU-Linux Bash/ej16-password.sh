#!/bin/bash

#########################################
#
# Nombre: ej16-password.sh
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

read -s -p "Escriba la contraseña que quiera utilizar: " password
read -s -p "Confirme la contraseña: " password_confirm

while [ "$password" != "$password_confirm" ]
do
    echo "La contraseña intoducida no coincide"
    read -s -p "Introduzca de nuevo la contraseña: " password_confirm
done

echo "Correcto, su contraseña es $password"
