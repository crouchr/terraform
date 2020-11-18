# template to be used for user data - this version has no TF variables in it at the moment

user_data = <<-EOF
#!/bin/bash
mkdir -p /var/www/html/
yum update -y
yum install -y httpd lsof
service httpd start
usermod -a -G apache centos
chown -R centos:apache /var/www
EOF
