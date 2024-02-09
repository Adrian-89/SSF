if [ -z "$1" ]
then
  echo "Dime el nombre del paquete que desees"
  read nombre
  echo "Se sincronizaran los repositorios"
else
  nombre=$1
fi
sudo apt update

dpkg -s $nombre 2>/dev/null >/dev/null 

if [ $? -eq 0 ]
then
    echo "Bien!!!, $nombre está instalado en su sistema"
  
else
  echo "Que pena, '$nombre no está instalado en su sistema"
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
      
    a|A|1) apt version $nombre;;
    b|B|2) sudo apt reinstall $nombre;;
    c|C|3) sudo apt install $nombre;;
    d|D|4) sudo apt remove $nombre;;
    e|E|5) sudo apt purge $nombre;;
        *) echo "Te equivocaste de opcion, prueba otra vez";;
    esac