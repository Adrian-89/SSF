#!/bin/bash

#########################################
#
# NOMBRE: bucles_for2.sh
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# OBJETIVO: ejemplos simples de bucles en scripts
#
#
# HISTORIAL:
#   2024-01-15: versión 1
#
#################################################

# Puedo recorrer todos los argumentos (único valor)
for arg in "$*"
do
	echo '$*: '"El argumento es $arg"
done

# Puedo recorrer todos los argumentos (uno a uno como una lista)
for arg in "$@"
do
	echo '$@: '"El argumento es $arg"
done


# Puedo recorrer todos los elementos del disco
# Ficheros, directorios, etc.
for elem in *.sh
do
	echo "Elemento: $elem"
	chmod go-x $elem
done


# Puedo recorrer la salida de cualquier comando
for elem in $(date)
do
	echo "Elemento: $elem"
done

