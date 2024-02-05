#!/bin/bash

####################################
# NOMBRE: muestra_datos
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# OBJETIVO: Mostrar datos obtenidos por teclado
#
# ENTRADAS: Ninguna, se piden por teclado
# SALIDAS: Mensaje
#
# VERSIÓN: 2024-01-15 versión 1.0
############################################

sleep 15

read -p "Indique su nombre: " nombre
read -p "Indique su apellido: " apellido
read -p "Indique su usuario: " usuario

echo "Bienvenido, $nombre"
echo "Tus datos son $nombre, $apellido"
echo "Vamos a crear tu usuario: $usuario"
echo "Tu nueva ID es $RANDOM"


