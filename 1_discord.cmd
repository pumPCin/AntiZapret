start "antizapret: discord" /min "%~dp0winws.exe" --wf-tcp=443 --wf-udp=443,50000-50100 ^
--filter-udp=443 --hostlist="%~dp0list-discord.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0quic_initial_www_google_com.bin" --new ^
--filter-udp=50000-50100 --ipset="%~dp0ipset-discord.txt" --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-cutoff=d3 --dpi-desync-repeats=6 --new ^
--filter-tcp=443 --hostlist="%~dp0list-discord.txt" --dpi-desync=fake,split --dpi-desync-autottl=2 --dpi-desync-repeats=6 --dpi-desync-fooling=badseq --dpi-desync-fake-tls="%~dp0tls_clienthello_www_google_com.bin"
