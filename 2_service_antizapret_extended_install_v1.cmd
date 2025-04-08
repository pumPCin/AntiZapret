set ARGS=--wf-tcp=80,443 --wf-udp=443,50000-50100 ^
--filter-tcp=80 --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --hostlist-auto=\"%~dp0list-extended.txt\" --new ^
--filter-tcp=443 --hostlist=\"%~dp0list-extended.txt\" --dpi-desync=fake,split2 --dpi-desync-repeats=11 --dpi-desync-fooling=md5sig --dpi-desync-fake-tls=\"%~dp0tls_clienthello_www_google_com.bin\" --new ^
--filter-tcp=80,443 --dpi-desync=fake,disorder2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-udp=50000-50100 --ipset=\"%~dp0ipset-discord.txt\" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-any-protocol --dpi-desync-cutoff=n4 --new ^
--filter-udp=443 --ipset=\"%~dp0ipset-cloudflare.txt\" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new ^
--filter-tcp=80 --ipset=\"%~dp0ipset-cloudflare.txt\" --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --ipset=\"%~dp0ipset-cloudflare.txt\" --dpi-desync=fake,multidisorder --dpi-desync-split-pos=midsld --dpi-desync-repeats=6 --dpi-desync-fooling=md5sig,badseq ^
--filter-udp=443 --hostlist=\"%~dp0list-extended.txt\" --dpi-desync=fake --dpi-desync-repeats=11 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new ^
--filter-udp=443 --dpi-desync=fake --dpi-desync-repeats=11

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
