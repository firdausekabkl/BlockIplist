chmod +x IPupdate.sh
chmod +x ublock.sh

#!/bin/bash
for u in $(cat u-ip.txt);
do
sudo ufw delete deny from "$u" 
done

#the rules & Reload Services
sudo ufw reload
