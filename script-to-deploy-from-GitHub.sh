#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/iamafisu/mole/archive/refs/heads/main.zip
unzip main.zip
cp -r mole-main/* /var/www/html/
rm -rf mole-main main.zip
systemctl enable httpd
systemctl start httpd