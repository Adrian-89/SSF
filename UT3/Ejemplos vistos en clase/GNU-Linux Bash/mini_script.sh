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

if [ -z "$1" ]
then
  echo "Dame un valor: "
  read nombre
else
  nombre=$1
fi

if [ -f "$1"]
then
chmod u+x $1
else
nombre=$1
fi

if [ -d "$1"]
then
chmod 744 $1
else
nombre=$1
fi

sudo apt update

dpkg -s $nombre 2>/dev/null >/dev/null 

if [ $? -eq 0 ]
then
    echo "El paquete, $nombre está instalado en el sistema"
  
else
  echo "El paquete, '$nombre no está instalado en el sistema"
 fi

if dpkg -l | grep -q $nombre; then
    echo "1. Mostrar versión actual"
    echo "2. Reinstalar"
    echo "3. Actualizar $nombre "
    echo "4. Eliminar conservando la configuración"
    echo "5. Eliminar totalmente"
    
    fi
    read -p "Selecciona una de esta opciones del 1 al 5: " choice

    case $choice in
        a|A|1) sudo apt reinstall $nombre;;
        b|B|2) sudo apt install $nombre;;
        c|C|3) sudo apt remove $nombre;;
        d|D|4) sudo apt purge $nombre;;
        *) echo "Opción no valida, prueba otra vez";;
    esac

if pgrep $nombre; then
    kill pgrep $nombre
else
    echo "No es posible terminar el proceso solicitado"



  read -p "Pon tu nombre de usuario para : "
  if $nombre; then
  crontab * * 18 5 $nombre
  else
    echo "Usuario no valido, introduzca SU nombre de usuario"
  fi

  if id=id $nombre; then
    echo "Ese usuario ya existe"
else
 user_check(){
    read -p "Ingrese el nombre de usuario: " username
    sudo useradd -m -k /etc/skel -s /bin/bash "$username"
  }








































