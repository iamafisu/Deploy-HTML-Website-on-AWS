#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
aws s3 cp s3://webfiles-s3/mole.zip molefroms3.zip
unzip molefroms3.zip
cp -r mole-main/* /var/www/html/
rm -rf mole-main molefroms3.zip
systemctl enable httpd
systemctl start httpd