@echo off

REM ***************************
REM * NOMBRE: repaso_arg.bat
REM * AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
REM *
REM * OBJETIVO: repaso de argumentos
REM *
REM * VERSIÓN: 2024-01-23 
REM *
REM ***************************
title Ejemplos de bucles

REM %0: Nombre del script
REM %*: Ver todos los argumentos
REM %1 ... %9: Argumentos 

REM %10, %11, %12... NO se puede acceder directamente, 
REM Tengo que usar "shift" para desplazar (se pierden los argumentos)


REM %1: Imprime el primer argumento "tal cual"
REM %~1: Imprime el primer argumento SIN COMILLAS

echo El script se llama %0
echo Todos los argumentos recibidos son: %*
echo El primer argumento es %1
echo El segundo argumento es %~2
echo El tercer argumento es %3

REM CALCULAR EL NUMERO DE ARGUMENTOS
REM recorro los argumentos y los cuento
set num_arg=0
REM for %%a in (%*) do set /a num_arg+=1
for %%a in (%*) do (
  set /a num_arg+=1
)
echo El numero de argumentos es %num_arg%