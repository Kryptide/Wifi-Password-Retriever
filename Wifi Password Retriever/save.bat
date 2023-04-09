@echo off
PowerShell.exe -Command "(netsh wlan show profiles) | Select-String 'All User Profile' | ForEach-Object { $_.ToString().Split(':')[1].Trim()} | ForEach-Object {netsh wlan show profile name=$_ key=clear}" > wifi_passwords.txt
echo Wi-Fi passwords saved to wifi_passwords.txt
exit
