provider "aws" {
  region = "eu-west-1"
}

# where this layer will write information to
terraform {
  backend "s3" {
    bucket = "dev-rch-remote-state-s3"
    key = "asg"
    region = "eu-west-1"
  }
}
