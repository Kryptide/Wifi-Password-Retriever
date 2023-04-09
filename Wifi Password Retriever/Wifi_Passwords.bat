@echo off
color 0a
title Wifi Password Retriever
type art.txt
echo.
echo.
echo=====================================================================================
echo You are about to retrieve and reveal all saved Wifi Network passwords in plain text.
echo Are you sure you want to do this?
echo=====================================================================================
Pause
PowerShell.exe -Command "(netsh wlan show profiles) | Select-String 'All User Profile' | ForEach-Object { $_.ToString().Split(':')[1].Trim()} | ForEach-Object {netsh wlan show profile name=$_ key=clear}"
echo.
echo.
echo.
echo.
echo ===============================================
echo Do You Want to Save The Output to a Text File?
echo ===============================================
echo.
echo 1) Save
echo 2) No, Exit
echo.
set mypath=%cd%
set /p web=Choose an Option:
if "%web%"=="1" start save.bat
if "%web%"=="2" exit
goto home
