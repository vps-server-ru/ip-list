#!/bin/sh
# set here tun iface
TUN=tun0
# MAX.RU -> blackhole
ip route add blackhole 155.212.204.0/24
# ip-list
wget -qO - http://openwrt.ivtrans.ru/ip-list.txt > /tmp/ip-list.txt
while read line; do
  ip r a $line dev $TUN
done < /tmp/ip-list.txt
# google IPs
wget -qO - https://www.gstatic.com/ipranges/goog.json |grep ipv4Prefix|awk '{print $2}' |sed 's/"//g' > /tmp/google.txt
while read line; do
  ip r a $line dev $TUN
done < /tmp/google.txt
date > /tmp/$TUN-up.txt
