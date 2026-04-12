# ip-list
IP list to tun

# в конфиг openvpn нужно добавить пару строк

<code bash>
pull-filter ignore redirect-gateway
up /etc/openvpn/up.sh
</code>

# и создать файл
<code bash>
touch /etc/openvpn/up.sh
chmod +x /etc/openvpn/up.sh
</code>

# Поиск сетей IP в файле

<code bash>
sed -nr '/([0-9]{1,3}\.){3}[0-9]{1,3}/p' from.txt | uniq | sort -h > 2.txt
</code>
