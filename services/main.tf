# Create EC2 instance nvm-linux that can be messed around with
# WORKS : Marketplace CentOS7 in eu-west-1 : ami-0b850cf02cc00fdc8 m3.medium -> login as centos
# USE THIS : "ami-0d5a2b5bf5b8b7e20" # br2020-AMI -> login as centos
# NVM AMI built by Packer in eu-west-1 / developmentaws account : "ami-0f987a4c9b8b8d31d"
# Reference : https://www.terraform.io/docs/providers/terraform/d/remote_state.html
# The NVM Centos7 AMI may not work - i.e. it may need to be bootstrapped into chef etc for it to come up and be ssh reachable
# Slackware AMI = "ami-41a85a36", username is slack-user (AMI is eu-west-1 only)
# Slackware - it works but no longer OS of choice
# ami = "ami-09d1b4885efd8de77" # br2020-AMI

resource "aws_instance" "server" {
  ami = "ami-0b850cf02cc00fdc8" # Marketplace CentOS7 AMI
  instance_type = "t2.micro"    # "t2.micro"

  # read User Data from a template file - nicer as the template file can be unit tested independently
  user_data = file("user_data.tpl")

  key_name = "rch-lab-key"      # generated in AWS console for SSHing into this instance

  vpc_security_group_ids = [data.terraform_remote_state.sg_map.outputs.vpc_public_sg]
  subnet_id = data.terraform_remote_state.vpc.outputs.public_subnet_lab01

  tags = {
    Name = "dev-rch-server-01"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM = "NETWORK"
    BUILT_BY   = "TERRAFORM"
    STACK = "NETWORK"
    PURPOSE = "SANDBOX_LAB"
  }

    #connection {
    #type     = "ssh"
    #user     = "centos"
    #password = ""
    #host     = self.public_ip
    #  timeout = "3m"
    #private_key = file("/home/crouchr/.ssh/rch-lab-key.pem")
    #}

  #provisioner "remote-exec" {
  #  inline = [
  #    "sudo mkdir -p /var/www/html/",
  #    "sudo yum update -y",
  #    "sudo yum install -y httpd lsof",
  #    "sudo service httpd start",
  #    "sudo usermod -a -G apache centos",
  #    "sudo chown -R centos:apache /var/www"
  #    ]
  #}

}
