@echo off
title cambio_calculado

REM ************************************
REM * NOMBRE: ej19-Calcular_cambio.bat
REM * AUTOR: Adrian Ibarra Faura
REM *
REM * OBJETIVO: Calcular cambio en billetes y monedas
REM *
REM * ENTRADAS: Valores
REM * SALIDA: resultado
REM * VERSION: 2024-01-29 versión 2
REM *****************************************




set dinero2=200 100 50 20 10 5 2 1
set dinero=%1
echo Se ha comprado un artículo de %dinero% euros y ha pagado 500 euros.
set /a cambio=500 - dinero

if %cambio% equ 0 (
    echo No hay que entregar cambio
) else (
    for %%i in (%dinero2%) do (
        if %cambio% geq %%i (
            set /a "resultado=cambio/%%i"
            echo !resultado! billete(s) de %%i euro(s)
            set /a "cambio=cambio-resultado*%%i"
        )
    )