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

if pgrep $nombre; then
    kill pgrep $nombre
else
    echo "No es posible terminar el proceso solicitado"



 







































