clear
chmod +x IPupdate.sh
chmod +x ublock.sh

./IPupdate.sh

#!/bin/bash
mytitle="Runing"

for b in $(cat b-ip.txt);
do
sudo ufw reject from "$b" to any
done

#the rules & Reload Services
sudo ufw reload

./ublock.sh
