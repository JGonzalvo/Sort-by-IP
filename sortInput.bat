@ECHO OFF 
SETLOCAL ENABLEDELAYEDEXPANSION
set INPUT=
set /P INPUT= %=%
SET "DEST_DIR=C:\Users\lemuelg.TM-CSOPNET\Desktop\Trial\"
SET "SEARCH_DIR=C:\Users\lemuelg.TM-CSOPNET\Desktop\Trial\Mail"

mkdir .\%INPUT%

FOR /F "tokens=*" %%a IN ('type %~dp0%INPUT%.txt') DO (
    FOR /R "%SEARCH_DIR%" %%f IN (*%%a*) DO (
        SET "SRC=%%~dpf"
        SET DEST=!SRC:%SEARCH_DIR%=%DEST_DIR%%INPUT%!
        move /-Y "%%~f" "!DEST!"
    )
)

PAUSE