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
