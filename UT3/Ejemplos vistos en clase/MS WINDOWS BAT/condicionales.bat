@echo off

REM ***************************
REM ***************************


REM Comprobar si una variable está definida
if defined var (
  echo var esta definida y vale %var%
) else (
  echo var NO esta definida
)  

REM NEGAR una condición: NOT
if NOT defined a echo La variables a NO esta definida


set a=hola
REM COMPARAR TEXTOS:
REM Se compara CASE SENSITIVE, si se quiere INSENSITIVE, usar /I
if /i "%a%" == "Hola" (
  echo La variable a dice Hola
) else (
  echo La variable a dice otra cosa: %a%
)
REM Más ayuda: help if

set /p disco=Dime un elemento del disco (fichero, directorio, etc): 
if EXIST %disco% (
  echo CORRECTO!! %disco% SI existe
  echo.
  echo Informacion sobre %disco%
  dir %disco%
) else (
  echo Lo siento, %disco% NO existe
)


REM COMPARA NUMEROS:
REM PYTHON   |   BASH    |  BAT
REM ----------------------------
REM   ==     |    -eq    |  EQU
REM   !=     |    -ne    |  NEQ
REM   >      |    -gt    |  GTR
REM   >=     |    -ge    |  GEQ
REM   <      |    -lt    |  LSS
REM   <=     |    -le    |  LEQ

set /p edad=Dime tu edad: 
if %edad% LSS 18 (
  echo Lo siento, eres MENOR de edad
) else (
  echo Felicidades, eres MAYOR de edad
)


REM NO HAY "AND" NI "OR"

REM SIMULAR UN AND 
if cond1 if cond2 if cond3 (
  REM Se tienen que cumplir TODAS las condiciones
  REM para ejecutar el código 
  ...
)

REM SIMULAR UN OR
set res=F
if cond1 res=T
if cond2 res=T
if cond3 res=T

if "%res%" == "T" (
  REM Se tiene que cumplir AL MENOS UNA condición
  REM para ejecutar el código 
  ...
)



