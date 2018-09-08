@echo off
setlocal enabledelayedexpansion
FOR /f %%i IN ("C:\A\B\C\D\") DO (
set parent=%%~dpi
for /F "tokens=*" %%f in ("!parent:~0,-1!") do echo %%~nf
)
pause