#!/bin/bash

#################################################
#
# NOMBRE: ej09-ficheros.sh
# AUTOR: Adrian Ibarra Faura
#
# OBJETIVO: informar sobre las características de los elementos en disco
#
# ENTRADAS: 1: Elemento como ficheros, directorios, etc
# SALIDAS: Información sobre el elemento
#
# HISTORIAL:
#   2024-01-12: versión 1
#
#################################################

elem=$1


if [ ! -n "$elem" ]
then
	echo "ERROR: Debe indicar un elemento"
	read -p "Indique el elemento: " elem
fi

if [ -e "$elem" ]
then
	echo "'$elem' EXISTE"
else
	echo "Lo siento, '$elem' NO existe"
	exit
fi



if [ -f "$elem" ]
then
	echo "'$elem' es un FICHERO"
elif [ -d "$elem" ]
then
	echo "'$elem' es un DIRECTORIO"
elif [ -h "$elem" ]
then
	echo "'$elem' es un ENLACE"
else
	echo "'$elem es OTRO ELEMENTO"
fi



if [ -s "$elem" ]
then
	echo "'$elem' NO es vacío"
else
	echo "'$elem' es VACÍO"
fi




if [ -r "$elem" ]
then
	echo "'$elem' tiene permisos de LECTURA"
else
	echo "'$elem' NO tiene permisos de LECTURA"
fi
if [ -w "$elem" ]
then
	echo "'$elem' tiene permisos de ESCRITURA"
else
	echo "'$elem' NO tiene permisos de ESCRITURA"
fi
if [ -x "$elem" ]
then
	echo "'$elem' tiene permisos de EJECUCIÓN/ACCESO"
else
	echo "'$elem' NO tiene permisos de EJECUCIÓN/ACCESO"
fi






