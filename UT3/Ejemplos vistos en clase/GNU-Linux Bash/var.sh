#!/bin/bash

mkdir prb
cod_err=$?

if [ -z "$1" ]
then
	echo "Debes indicar un argumento"
	exit 10
fi



if [ "$cod_err" -eq 0 ]
then
	echo "NO hubo error"
else
	echo "Hubo un error con código $cod_err"
fi
