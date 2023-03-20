#! /usr/bin/bash
sudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m multiport --dports 80,443 -m conntrack --ctstate ESTABLISHED -j ACCEPT
# used to establish persistence over https

sudo iptables -A INPUT -p tcp --dport 20 -j REJECT #drop ftp
sudo iptables -A INPUT -p tcp --dport 3306 -j REJECT #drop mysql
sudo iptables -A INPUT -p tcp --dport 53 -j REJECT # drop dns

#sudo iptables -A INPUT DROP #drops all traffic except http(s), use only after established c2
