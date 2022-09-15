chmod +x IPupdate.sh
chmod +x ublock.sh


./IPupdate.sh

#!/bin/bash
for u in $(cat u-ip.txt);
do

done

#the rules & Reload Services
service iptables save
sudo ufw reload
