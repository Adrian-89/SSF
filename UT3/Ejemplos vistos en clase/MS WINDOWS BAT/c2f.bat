@echo off

title C2F

REM ************************************
REM * NOMBRE: c2f.bat
REM * AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org
REM *
REM * OBJETIVO: Convertir grados Celsius a Fahrenheit
REM *
REM * ENTRADAS: Valor en Celsius
REM * SALIDA: Valor en Fahrenheit
REM * VERSION: 2024-01-22 versión
REM *****************************************

set celsius=%1

if "%celsius%" == "" (
  echo ERROR!! No indicaste el valor de los grados Celsius
  set /p celsius=Indique el valor de los grados Celsius: 
  
)

set /a fahr=%celsius% * 9 / 5 + 32

echo %CELSIUS%.C son %Fahr%.F

