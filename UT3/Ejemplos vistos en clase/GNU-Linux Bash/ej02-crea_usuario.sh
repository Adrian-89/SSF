#!/bin/bash

######################################
# NOMBRE: ej02-crea_usuario.sh
# OBJETIVO: Simular la creacion de un usuario
#
# AUTOR: Adrian Ibarra Faura
#
# ENTRADAS: 1: nombre, 2: apellido, 3: usuario
# SALIDAS: Mensaje
#
# VERSION: 2024-01-08 
#########################################

nombre=$3
apellido=$2
usuario=$4

echo "Bienvenido, $nombre"
echo "Tus datos son $nombre, $apellido"
echo "Vamos a crear tu usuario: $usuario"
echo "Tu nueva ID es $RANDOM"

