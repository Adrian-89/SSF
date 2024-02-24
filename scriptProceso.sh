#!/bin/bash

####################################
#
#
#
#
#
#
#
#
#
#######################################

maxCPU=$1
maxMem=$2


menu() {
	aux=0
    PS3="Selecciona una opcion del siguiente menu: "
    select opt in "Continuar" "Disminuir prioridad en -3" "Interrumpir proceso" "Terminar proceso" "Matar proceso" "Detener proceso (Puede ser evitado)" "Detener proceso (Imposible de evitar)"
    do
    case $REPLY in
    1)
    break
    ;;
    2)
	aux=$(( aux + 3 ))
    renice $aux $1
    ;;
    3)
    kill -INT $1
    break
    ;;
    4)
    kill -TERM $1
    break
    ;;
    5)
    kill -KILL $1
    break
    ;;
    6)
    kill -TSTP $1
    ;;
    7)
    kill -STOP $1
    ;;
    *)
    echo "Opcion fuera de los limites establecidos, seleccione una opcion valida"
    ;;
    esac 
    done
}


# Apartado donde pondremos los traps para los procesos
trap "echo Proceso interrumpido ; exit 0" INT
trap "echo Ejecucion terminada ; exit 0" TERM
trap "echo Carga del sistema ; uptime" USR1
trap "echo Límite de procesos ; ulimit -u" USR2

#Apartado donde se comprueban los argumentos de error
if [ "$#" -ne 2 ]
then
	echo "Indica 2 argumentos por favor, ERROR 100"
	exit 100
fi

if [ "$1" -lt 0 ] || [ "$2" -lt 0 ]
then
	echo "Indica valores mayores o iguales a 0 ERROR 200"
	exit 200
fi

if [ "$2" -gt 100 ]
then
	echo "La memoria máxima no puede ser superior a 100, ERROR 150"
	exit 150
fi


while true
do
	echo "Procediendo a la comprobacion, espere por favor"
	

	CPUprocess=$(ps axo pcpu= --sort -pcpu | head -n 1)
	pidCPUprocess=$(ps axo pid= --sort -pcpu | head -n 1)
	MEMprocess=$(ps axo pmem= --sort -pmem | head -n 1)
	pidMEMprocesos$(ps axo pid= --sort -pmem | head -n 1)

	if echo "$CPUprocess >= $maxCPU" | bc -l | grep -q 1 && echo "$MEMprocess >= $maxMem" | bc -l | grep -q 1
	then
	PS3="Seleccione la opcion que desee para trabajar con el proceso:"
	select opt in "Proceso con mayor %CPU" "Proceso con mayor %memoria"
	do
	case $REPLY in
	1)
	ps p $pidCPUprocess
	menu $pidCPUprocess
	break
	;;
	2)
	ps p $pidMEMprocess
	menu $pidMEMprocess
	break
	;;
	*)
	echo "Opción inválida"
	break
	;;
	esac
	done

	
	elif echo "$CPUprocess >= $MaximaCPU" | bc -l | grep -q 1
	then
		ps p $pidCPUprocess
                menu $pidCPUprocess
	elif echo "$MEMproceso >= $maxMem" | bc -l | grep -q 1
	then
	        ps p $pidMEMprocess
                menu $pidMEMprocess

	fi

	sleep 3

done
