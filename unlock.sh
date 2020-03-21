#!/bin/bash
rm -f /etc/resolv.conf
echo "nameserver 127.0.0.1" > /etc/resolv.conf
echo "server=8.8.8.8" > /etc/dnsmasq.d/unlock.conf
echo "server=8.8.4.4" >> /etc/dnsmasq.d/unlock.conf
echo "server=/netflix.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/netflix.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflximg.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflximg.com/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflxvideo.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflxso.net/$1" >> /etc/dnsmasq.d/unlock.conf
echo "server=/nflxext.com/$1" >> /etc/dnsmasq.d/unlock.conf
    
systemctl restart dnsmasq
service v2ray restart
echo "更换成功"

