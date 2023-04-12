@ECHO OFF
start cmd /k %~dp0\Monero\monerod.exe --zmq-pub tcp://127.0.0.1:18083 --out-peers 64 --in-peers 32 --add-priority-node=node.supportxmr.com:18080 --add-priority-node=nodes.hashvault.pro:18080 --disable-dns-checkpoints --enable-dns-blocklist
ECHO Wait until the Monero daemon shows fully synced before continuing. This can take some time. Type 'status' in other window to check progress.
PAUSE
start cmd /k %~dp0\p2pool.exe --wallet <WALLET_ADDR> --mini
ECHO Wait until the daemon shows fully synced before continuing. This can take some time.
PAUSE
%~dp0\xmrig.exe -o 127.0.0.1
