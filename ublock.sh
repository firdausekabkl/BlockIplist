chmod +x IPupdate.sh
chmod +x ublock.sh


./IPupdate.sh

#!/bin/bash
for i in $(cat u-ip.txt);
do
sudo ufw reject from "$i" to any
done

#the rules & Reload Services
service iptables save
sudo ufw reload
