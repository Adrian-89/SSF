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

read -p "Pon tu nombre de usuario para : "
  if $nombre; then
  crontab * * 18 5 $nombre
  else
    echo "Usuario no valido, introduzca SU nombre de usuario"
  fi