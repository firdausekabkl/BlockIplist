chmod +x IPupdate.sh
chmod +x ublock.sh


./IPupdate.sh
./ublock.sh

#!/bin/bash
for b in $(cat b-ip.txt);
do
sudo firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address="$b" reject"
sudo iptables -I INPUT -s $b -j DROP
sudo ufw reject from "$b" to any
done

#the rules & Reload Services
service iptables save
sudo ufw reload
sudo firewall-cmd --reload
