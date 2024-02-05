#!/bin/bash

#########################################
#
# NOMBRE: menu_case.sh
# AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
#
# OBJETIVO: menú simple con case
#
# ENTRADAS: 
# SALIDAS:
#
# HISTORIAL:
#   2024-01-12: versión 1
#
#################################################

clear
echo "         *************"
echo "         ** M E N Ú **"
echo "         *************"
echo ""
echo "a: Mostrar el contenido del directorio"
echo "b: Mostrar el espacio libre de disco"
echo "c: Mostrar los permisos del contenido del directorio"
echo "d: Mostrar la memoria libre"
echo ""
read -p "Introduzca su opción: " opcion

case "$opcion" in

	a|A|1) ls -lh 
	;;


	b|B|2) df -h
	;;

	c|C|3) stat -c "%a %A %n" *
	;;

	d|D|4) free 
	;;	

	*) echo "ERROR: '$opcion' no es una opción correcta"
	;;

esac






