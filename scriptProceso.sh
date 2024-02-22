#!/bin/bash


maxCPU=$1
maxMem=$2

# función menu
menu_select() {
	#variable auxiliar para agregar siempre 3 con renice
	aux=0
        PS3="Introduzca la opción deseada: "
                select opt in "Seguir comprobando" "Disminuir prioridad -3" "Interrumpir proceso" "Terminar proceso" "Matar proceso" "Detener proceso (evitable)" "Detener proceso (inevitable)"
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
                                        echo "Opción inválida"
                                        ;;
                        esac 
                done
}


# Traps
trap "echo Interrumpiendo ejecución... ; exit 0" INT
trap "echo Finalizando ejecución... ; exit 0" TERM
trap "echo Carga del sistema ; uptime" USR1
trap "echo Límite de procesos ; ulimit -u" USR2

## Bloque de comprobacion de argumentos
if [ "$#" -ne 2 ]
then
	echo "Se deben indicar DOS argumentos [err 100]"
	exit 100
fi

if [ "$1" -lt 0 ] || [ "$2" -lt 0 ]
then
	echo "Ambos valores deben ser mayores o igual a 0 [err 200]"
	exit 200
fi

if [ "$2" -gt 100 ]
then
	echo "La memoria máxima no puede exceder 100 [err 150]"
	exit 150
fi

## Bucle infinito
while true
do
	echo "Comparando CPU y memoria..."
	sleep 2

	CPUproceso=$(ps axo pcpu= --sort -pcpu | head -n 1)
	pidCPUproceso=$(ps axo pid= --sort -pcpu | head -n 1)
	MEMproceso=$(ps axo pmem= --sort -pmem | head -n 1)
	pidMEMproceso=$(ps axo pid= --sort -pmem | head -n 1)

	if echo "$CPUproceso >= $maxCPU" | bc -l | grep -q 1 && echo "$MEMproceso >= $maxMem" | bc -l | grep -q 1
	then
		PS3="Ambos superan sus respectivos máximos, elija un proceso a tratar: "
			select opt in "Proceso con mayor %CPU" "Proceso con mayor %memoria"
			do
				case $REPLY in
					1)
						ps p $pidCPUproceso
						menu_select $pidCPUproceso
						break
						;;
					2)
						ps p $pidMEMproceso
						menu_select $pidMEMproceso
						break
						;;
					*)
						echo "Opción inválida"
						break
						;;
				esac
			done
	elif echo "$CPUproceso >= $maxCPU" | bc -l | grep -q 1
	then
		ps p $pidCPUproceso
                menu_select $pidCPUproceso
	elif echo "$MEMproceso >= $maxMem" | bc -l | grep -q 1
	then
	        ps p $pidMEMproceso
                menu_select $pidMEMproceso

	fi

	sleep 8

done
