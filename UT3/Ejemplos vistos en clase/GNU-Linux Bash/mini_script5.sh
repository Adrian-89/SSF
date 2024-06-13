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

if id=id $nombre; then
    echo "Ese usuario ya existe"
else
 user_check(){
    read -p "Ingrese el nombre de usuario: " username
    sudo useradd -m -k /etc/skel -s /bin/bash "$username"
  }



 







































