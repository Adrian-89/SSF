#!/bin/bash

#########################################
#
# NOMBRE: make_exec.sh
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# OBJETIVO: comprobar si un elemento existe, es fichero y NO tiene permisos
#           de ejecución. Si es así, le asignamos permisos de ejecución
#
# ENTRADAS: 1: elemento 
# SALIDAS: información sobre el elemento
#
# HISTORIAL:
#   2024-01-12: versión 1
#
#################################################

# CAPTURA DE ARGUMENTOS
elem=$1

# COMPROBACIÓN DE ARGUMENTOS

# 3 formas de comprobar que una variable no esté vacía
#if [ "$elem" = "" ]
if [ -z "$elem" ]
#if [ ! -n "$elem" ]
then
	echo "ERROR: Debe indicar un elemento"
	read -p "Indique el elemento: " elem
fi


# BLOQUE PRINCIPAL

# Compruebo que sea un fichero (y entonces ya existe) y NO tenga permiso de ejec.
if [ -f "$elem" ] && [ ! -x "$elem" ]
then
	# Le asigno permiso de ejecución
	chmod u+x $elem
fi







