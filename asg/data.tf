# Define the data sources to read from

# Read data about VPC
data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "dev-rch-remote-state-s3"
    key = "vpc"
    region = "eu-west-1"
  }
}

# Read data about SG MAP
data "terraform_remote_state" "sg_map" {
  backend = "s3"

  config = {
    bucket = "dev-rch-remote-state-s3"
    key = "sg_map"
    region = "eu-west-1"
  }
}

# Read data about EIP
#data "terraform_remote_state" "eip" {
#  backend = "s3"

#  config = {
#    bucket = "dev-rch-remote-state-s3"
#    key = "eip"
#    region = "eu-west-1"
#  }
#}

#data "template_file" "ec2_user_data" {
#  template = file("user_data.tpl")
