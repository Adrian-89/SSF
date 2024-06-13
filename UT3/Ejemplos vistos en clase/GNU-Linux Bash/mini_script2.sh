#!/Bin/Bash
##################################
#                                #
#   Autor: Adrian Ibarra Faura   #
#   Nombre: mini_script.sh       #
#   Version: 0.1                 #
#   Fecha: 04-06-2024            #
#                                #
##################################
nombre=$1

if [ -f "$1"]
then
chmod u+x $1
else
nombre=$1
fi
