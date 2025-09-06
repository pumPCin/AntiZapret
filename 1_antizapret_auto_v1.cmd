start "antizapret: auto v1" /min "%~dp0winws.exe" ^
--wf-tcp=80,443 --wf-udp=443,50000-50100 ^
--filter-tcp=80 --ipset="%~dp0ipset-all.txt" --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=80 --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --hostlist-auto="%~dp0autohostlist.txt" --new ^
--filter-tcp=80 --hostlist="%~dp0autohostlist.txt" --dpi-desync=fake,multisplit --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443  --dpi-desync=multisplit --dpi-desync-split-seqovl=652 --dpi-desync-split-pos=2 --dpi-desync-split-seqovl-pattern="%~dp0tls_clienthello_www_google_com.bin" --hostlist-auto="%~dp0autohostlist.txt" --new ^
--filter-tcp=443 --hostlist="%~dp0autohostlist.txt" --dpi-desync=multisplit --dpi-desync-split-seqovl=652 --dpi-desync-split-pos=2 --dpi-desync-split-seqovl-pattern="%~dp0tls_clienthello_www_google_com.bin" --new ^
--filter-udp=443 --ipset="%~dp0ipset-all.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0quic_initial_www_google_com.bin" --new ^
--filter-udp=443 --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0quic_initial_www_google_com.bin" --hostlist-auto="%~dp0autohostlist.txt" --new ^
--filter-udp=443 --hostlist="%~dp0autohostlist.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0quic_initial_www_google_com.bin" --new ^
--filter-udp=50000-50100 --filter-l7=discord,stun --dpi-desync=fake --dpi-desync-repeats=6 --new

