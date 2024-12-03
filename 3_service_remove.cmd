set SRVCNAME=antizapret

net stop %SRVCNAME%
sc delete %SRVCNAME%
sc stop windivert
sc delete windivert
pause
