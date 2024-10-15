set SRVCNAME=antizapret

net stop %SRVCNAME%
sc delete %SRVCNAME%
pause
