./IPupdate.sh
clear
./ublock.sh
clear
#!/bin/bash
for i in $(cat b-ip.txt);
do
sudo ufw reject from "$i" to any
done

#the rules & Reload Services
service iptables save
sudo ufw reload
