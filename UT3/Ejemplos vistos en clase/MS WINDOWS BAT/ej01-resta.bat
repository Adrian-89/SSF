@echo off

title resta

REM ************************************
REM * NOMBRE: e01-resta.bat
REM * AUTOR: Adrian Ibarra Faura
REM *
REM * OBJETIVO: restar valores
REM *
REM * ENTRADAS: Valores
REM * SALIDA: resultado op
REM * VERSION: 2024-01-22 versión 1
REM *****************************************

set /a a = 89
set /a b = 12

set /a resultado = %a% + %b%

echo La resta de %a% + %b% = %resultado%
