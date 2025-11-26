start "antizapret: auto v3" /min "%~dp0winws.exe" ^
--wf-tcp=80,443,2053,2083,2087,2096,8443 --wf-udp=443,19294-19344,50000-50100 ^
--filter-tcp=80 --ipset="%~dp0ipset-all.txt" --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=80 --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --hostlist-auto="%~dp0autohostlist.txt" --new ^
--filter-tcp=80 --hostlist="%~dp0autohostlist.txt" --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --ipset="%~dp0ipset-all.txt" --dpi-desync=syndata --new ^
--filter-tcp=443 --dpi-desync=multisplit --dpi-desync-split-pos=2,sniext+1 --dpi-desync-split-seqovl=679 --dpi-desync-split-seqovl-pattern="%~dp0tls_clienthello_www_google_com.bin" --hostlist-auto="%~dp0autohostlist.txt" --new ^
--filter-tcp=443 --hostlist="%~dp0autohostlist.txt" --dpi-desync=multisplit --dpi-desync-split-pos=2,sniext+1 --dpi-desync-split-seqovl=679 --dpi-desync-split-seqovl-pattern="%~dp0tls_clienthello_www_google_com.bin" --new ^
--filter-tcp=2053,2083,2087,2096,8443 --hostlist-domains=discord.media --dpi-desync=multisplit --dpi-desync-split-pos=2,sniext+1 --dpi-desync-split-seqovl=679 --dpi-desync-split-seqovl-pattern="%~dp0tls_clienthello_www_google_com.bin" --new ^
--filter-udp=443 --ipset="%~dp0ipset-all.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0quic_initial_www_google_com.bin" --new ^
--filter-udp=443 --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0quic_initial_www_google_com.bin" --hostlist-auto="%~dp0autohostlist.txt" --new ^
--filter-udp=443 --hostlist="%~dp0autohostlist.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0quic_initial_www_google_com.bin" --new ^
--filter-udp=19294-19344,50000-50100 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=6 --new

