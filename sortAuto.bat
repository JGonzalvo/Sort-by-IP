@ECHO OFF 
SETLOCAL ENABLEDELAYEDEXPANSION

SET "DEST_DIR=%cd%\"
SET "SEARCH_DIR=%cd%\IP_listing"

set INPUT=DUL
mkdir .\%INPUT%

FOR /F "tokens=*" %%a IN ('type %~dp0IPListing.%INPUT%.listed') DO (
    FOR /R "%SEARCH_DIR%" %%f IN (*%%a*) DO (
        SET "SRC=%%~dpf"
        SET DEST=!SRC:%SEARCH_DIR%=%DEST_DIR%%INPUT%!
        move /-Y "%%~f" "!DEST!"
    )
)

set INPUT=MML
mkdir .\%INPUT%

FOR /F "tokens=*" %%a IN ('type %~dp0IPListing.%INPUT%.listed') DO (
    FOR /R "%SEARCH_DIR%" %%f IN (*%%a*) DO (
        SET "SRC=%%~dpf"
        SET DEST=!SRC:%SEARCH_DIR%=%DEST_DIR%%INPUT%!
        move /-Y "%%~f" "!DEST!"
    )
)
set INPUT=QIL
mkdir .\%INPUT%

FOR /F "tokens=*" %%a IN ('type %~dp0IPListing.%INPUT%.listed') DO (
    FOR /R "%SEARCH_DIR%" %%f IN (*%%a*) DO (
        SET "SRC=%%~dpf"
        SET DEST=!SRC:%SEARCH_DIR%=%DEST_DIR%%INPUT%!
        move /-Y "%%~f" "!DEST!"
    )
)
set INPUT=RBL
mkdir .\%INPUT%

FOR /F "tokens=*" %%a IN ('type %~dp0IPListing.%INPUT%.listed') DO (
    FOR /R "%SEARCH_DIR%" %%f IN (*%%a*) DO (
        SET "SRC=%%~dpf"
        SET DEST=!SRC:%SEARCH_DIR%=%DEST_DIR%%INPUT%!
        move /-Y "%%~f" "!DEST!"
    )
)
set INPUT=SWL
mkdir .\%INPUT%

FOR /F "tokens=*" %%a IN ('type %~dp0IPListing.%INPUT%.listed') DO (
    FOR /R "%SEARCH_DIR%" %%f IN (*%%a*) DO (
        SET "SRC=%%~dpf"
        SET DEST=!SRC:%SEARCH_DIR%=%DEST_DIR%%INPUT%!
        move /-Y "%%~f" "!DEST!"
    )
)

ren .\IP_Listing "Not Listed"
PAUSE