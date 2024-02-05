@echo off

title Suma

REM ************************************
REM * NOMBRE: suma.bat
REM * AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org
REM *
REM * OBJETIVO: Sumar dos valores
REM *
REM *
REM *****************************************

set /p a=Introduzca el primer valor:
set /p b=Introduzca el segundo valor:

set /a resultado = %a% + %b%

echo La suma de %a% + %b% = %resultado%





