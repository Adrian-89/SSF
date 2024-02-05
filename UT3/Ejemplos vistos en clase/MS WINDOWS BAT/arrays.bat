@echo off

REM ***************************
REM * NOMBRE: arrays.bat
REM * AUTOR: Antonio Dorta <adorlor@gobiernodecanarias.org>
REM *
REM * OBJETIVO: arrays en batch
REM *
REM * VERSIÓN: 2024-01-23 
REM *
REM ***************************
title Ejemplos de arrays

set paises[0]=Suiza
set paises[1]=Reino Unido
set paises[2]=Suecia
set paises[3]=España
set paises[4]=Francia
set paises[5]=Ciudad del Vaticano
set n=5

setlocal enabledelayedexpansion
for /L %%p in (0 1 %n%) do (
  echo El pais numero %%p es !paises[%%p]!
)

REM Calcular la media de unos valores
set datos[1]=345
set datos[2]=624
set datos[3]=125
set datos[4]=156
set numdatos=4

echo.
set media=0
for /L %%i in (1 1 %numdatos%) do (
  set /a media+=datos[%%i]
)
set /a media/=numdatos
echo La media es %media%









