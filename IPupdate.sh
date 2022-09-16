mytitle="Update List IP"
sudo rm b-ip.txt
sudo rm u-ip.txt

curl https://datafirdausbkl.web.app/b-ip.txt >> b-ip.txt
curl https://datafirdausbkl.web.app/u-ip.txt >> u-ip.txt


echo ==============================================
