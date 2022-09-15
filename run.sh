chmod +x IPupdate.sh
chmod +x ublock.sh

./IPupdate.sh

#!/bin/bash
for b in $(cat b-ip.txt);
do
sudo iptables -I INPUT -s $b -j DROP
sudo ufw reject from "$b" to any
done

#the rules & Reload Services
service iptables save
sudo ufw reload

./ublock.sh
