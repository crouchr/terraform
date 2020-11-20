#!/bin/bash
mkdir -p /var/www/html/
yum update -y
yum install -y httpd lsof
service httpd start
usermod -a -G apache centos
chown -R centos:apache /var/www

