set ARGS=--wf-tcp=80,443,2053,2083,2087,2096,8443 --wf-udp=443,19294-19344,50000-50100 ^
--filter-tcp=80 --ipset=\"%~dp0ipset-all.txt\" --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=80 --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --hostlist-auto=\"%~dp0autohostlist.txt\" --new ^
--filter-tcp=80 --hostlist=\"%~dp0autohostlist.txt\" --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --ipset=\"%~dp0ipset-all.txt\" --dpi-desync=multisplit --dpi-desync-split-seqovl=652 --dpi-desync-split-pos=2 --dpi-desync-split-seqovl-pattern=\"%~dp0tls_clienthello_www_google_com.bin\" --new ^
--filter-tcp=443 --dpi-desync=multisplit --dpi-desync-split-seqovl=652 --dpi-desync-split-pos=2 --dpi-desync-split-seqovl-pattern=\"%~dp0tls_clienthello_www_google_com.bin\" --hostlist-auto=\"%~dp0autohostlist.txt\" --new ^
--filter-tcp=443 --hostlist=\"%~dp0autohostlist.txt\" --dpi-desync=multisplit --dpi-desync-split-seqovl=652 --dpi-desync-split-pos=2 --dpi-desync-split-seqovl-pattern=\"%~dp0tls_clienthello_www_google_com.bin\" --new ^
--filter-tcp=2053,2083,2087,2096,8443 --hostlist-domains=discord.media --dpi-desync=multisplit --dpi-desync-split-seqovl=652 --dpi-desync-split-pos=2 --dpi-desync-split-seqovl-pattern=\"%~dp0tls_clienthello_www_google_com.bin\" --new ^
--filter-udp=443 --ipset=\"%~dp0ipset-all.txt\" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new ^
--filter-udp=443 --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --hostlist-auto=\"%~dp0autohostlist.txt\" --new ^
--filter-udp=443 --hostlist=\"%~dp0autohostlist.txt\" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic=\"%~dp0quic_initial_www_google_com.bin\" --new ^
--filter-udp=19294-19344,50000-50100 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=6 --new

set SRVCNAME=antizapret

sc stop "GoodbyeDPI"
sc delete "GoodbyeDPI"
net stop "zapret"
sc delete "zapret"
net stop %SRVCNAME%
sc delete %SRVCNAME%
sc create %SRVCNAME% binPath= "\"%~dp0winws.exe\" %ARGS%" DisplayName= "AntiZapret Service V1 (Auto): %SRVCNAME%" start= auto
sc description %SRVCNAME% "AntiZapret Service V1 (Auto)"
sc start %SRVCNAME%
pause
