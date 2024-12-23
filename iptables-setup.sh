#!/bin/bash
# Add iptables rules
iptables -I DOCKER-USER -s 172.20.0.100 -j DROP
iptables -I DOCKER-USER -s 172.20.0.100 -d 192.168.1.10 -p tcp --dport 3128 -j ACCEPT
iptables -I DOCKER-USER -s 172.20.0.100 -d 8.8.8.8 -p icmp --icmp-type echo-request -j ACCEPT
