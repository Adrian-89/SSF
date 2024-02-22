@echo off
title rectangulo

REM ************************************
REM * NOMBRE: ej03-C2F.bat
REM * AUTOR: Adrian Ibarra Faura
REM *
REM * OBJETIVO: Calcular area rectangulo
REM *
REM * ENTRADAS: Valores
REM * SALIDA: resultado
REM * VERSION: 2024-01-29 versión 2
REM *****************************************

set base=%1
set altura=%2

if "%altura%"=="" (
    if "%base%"=="" (
        set base=7
        set altura=4
    ) else (
        set altura=4
    )
)

set resultado=##
for /l %%i in (2,1,%base%) do (
    set "resultado+=" #"
)

for /l %%i in (1,1,%altura%) do (
    echo %resultado%
)