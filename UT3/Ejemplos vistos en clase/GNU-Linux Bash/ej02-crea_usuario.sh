#!/bin/bash

######################################
# NOMBRE: ej02-crea_usuario.sh
# OBJETIVO: Simular la creacion de un usuario
#
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# ENTRADAS: 1: nombre, 2: apellido, 3: usuario
# SALIDAS: Mensaje
#
# VERSION: 2024-01-08 (versión 1.0 inicial)
#########################################

nif=$1
nombre=$3
apellido=$2
usuario=$4

echo "Bienvenido, $nombre"
echo "Tus datos son $nombre, $apellido"
echo "Vamos a crear tu usuario: $usuario"
echo "Tu nueva ID es $RANDOM"

