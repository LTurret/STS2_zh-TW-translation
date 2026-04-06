@echo off
chcp 65001

set "SOURCE=%~dp0localization_override\zhs"
set "TARGET=%APPDATA%\SlayTheSpire2\localization_override\zhs"

if not exist "%SOURCE%" (
    pause
    exit /b 1
)

if exist "%TARGET%" (
    xcopy /E /I /Y "%SOURCE%" "%TARGET%" >nul
)

pause
endlocal