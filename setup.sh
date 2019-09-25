####################
dns=127.0.0.1
domain=LOCAL.DO
####################
sudo systemctl start firewalld
sudo firewall-cmd --change-interface=eth1 --zone=internal --permanent
sudo firewall-cmd --change-interface=eth0 --zone=external --permanent
sudo firewall-cmd --reload
sudo yum install -y bind bind-utils
sudo systemctl enable named
sudo firewall-cmd --add-service=dns --zone=internal --permanent
####################
sudo cp -rv * /
echo -e "DNS1=$dns\nDOMAIN=$domain" | sudo tee -a /etc/sysconfig/network-scripts/ifcfg-$internal
####################
sudo init 6
####################
