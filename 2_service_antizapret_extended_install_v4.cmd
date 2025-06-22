set ARGS=--wf-tcp=80,443 --wf-udp=443,50000-50100 ^
--filter-udp=443 --hostlist=\"%~dp0list-extended.txt\" --dpi-desync=fake --dpi-desync-repeats=11 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new ^
--filter-udp=50000-50100 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=6 --new ^
--filter-udp=443 --ipset=\"%~dp0ipset-all.txt\" --dpi-desync=fake --dpi-desync-repeats=11 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new ^
--filter-tcp=80 --ipset=\"%~dp0ipset-all.txt\" --dpi-desync=fake,fakedsplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --ipset=\"%~dp0ipset-all.txt\" --dpi-desync=fake,multidisorder --dpi-desync-split-pos=1,midsld --dpi-desync-repeats=11 --dpi-desync-fooling=md5sig ^
--filter-tcp=80 --hostlist=\"%~dp0list-extended.txt\" --dpi-desync=fake,fakedsplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --hostlist=\"%~dp0list-extended.txt\" --dpi-desync=fake,multidisorder --dpi-desync-split-pos=1,midsld --dpi-desync-repeats=11 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls-mod=rnd,dupsid,sni=www.google.com --new

set SRVCNAME=antizapret

sc stop "GoodbyeDPI"
sc delete "GoodbyeDPI"
net stop "zapret"
sc delete "zapret"
net stop %SRVCNAME%
sc delete %SRVCNAME%
sc create %SRVCNAME% binPath= "\"%~dp0winws.exe\" %ARGS%" DisplayName= "AntiZapret Service (Extended list): %SRVCNAME%" start= auto
sc description %SRVCNAME% "AntiZapret Service (Extended list)"
sc start %SRVCNAME%
pause
