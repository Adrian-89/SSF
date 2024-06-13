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

