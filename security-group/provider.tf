provider "aws" {
  region = "eu-west-1"
}

# where this layer will write information to
terraform {
  backend "s3" {
    bucket = "dev-rch-remote-state-s3"
    key = "sg_map"
    region = "eu-west-1"
  }
}

