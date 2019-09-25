####################
localhost=127.0.0.1
domain=LOCAL.DO
external=eth0
internal=eth1
service=dns
####################
sudo yum update -y
sudo yum install -y firewalld
sudo systemctl enable firewalld
sudo systemctl start firewalld
sudo firewall-cmd --change-interface=$external --zone=external --permanent
sudo firewall-cmd --change-interface=$internal --zone=internal --permanent
sudo firewall-cmd --reload
####################
sudo yum install -y bind bind-utils
sudo systemctl enable named
sudo firewall-cmd --add-service=$service --zone=internal --permanent
####################
sudo cp -rv * /
echo -e "DNS1=$localhost\nDOMAIN=$domain" | sudo tee -a /etc/sysconfig/network-scripts/ifcfg-$internal
####################
sudo init 6
####################
