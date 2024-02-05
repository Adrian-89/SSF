@echo off

title Suma

REM ************************************
REM * NOMBRE: suma_arg.bat
REM * AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org
REM *
REM * OBJETIVO: Sumar dos valores recibidos por argumento
REM *
REM *
REM *****************************************


REM CODIGOS DE ERRORES
set ERR_NO_ARG=5

REM Obtengo los parámetros
set a=%1
set b=%2




REM Compruebo si se han indicado los dos parámetros
if NOT defined a (
  echo ERROR!! Deberias haber indicado DOS variables
  REM exit: finaliza el script y también la terminal donde se ejecuta
  REM si no quiero finalizar la terminal, usar EXIT /B
  exit /b %ERR_NO_ARG%
) 

if "%b%" == "" (
  echo ERROR!! Debe indicar el parámetro b: "
  set /p b=Indique el parámetro b: 
)  
  

set /a resultado = %a% + %b%

echo La suma de %a% + %b% = %resultado%





