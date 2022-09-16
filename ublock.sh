Echo ==============================================================================
chmod +x IPupdate.sh
chmod +x ublock.sh

#!/bin/bash
mytitle="Unblock IP List"
for u in $(cat u-ip.txt);
do
sudo ufw show added | grep "$u"
sudo ufw delete deny from "$u" 
done

#the rules & Reload Services
sudo ufw reload
