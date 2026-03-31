# ip-list
IP list to tun

# в конфиг openvpn нужно добавить пару строк
pull-filter ignore redirect-gateway
up /etc/openvpn/up.sh
 
touch /etc/openvpn/up.sh
chmod +x /etc/openvpn/up.sh
