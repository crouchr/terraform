# Create some VPCs that can be messed around with

resource "aws_vpc" "lab01" {
  cidr_block = "10.90.1.0/24"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "dev-rch-dub-lab01"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM = "NETWORK"
    BUILT_BY   = "TERRAFORM"
    STACK = "NETWORK"
    PURPOSE = "SANDBOX_LAB"
  }


}

//resource "aws_vpc" "lab02" {
//  cidr_block = "10.90.2.0/24"
//    tags = {
//    Name = "dev-rch-dub-lab02"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}
//
//resource "aws_vpc" "lab03" {
//  cidr_block = "10.90.3.0/24"
//    tags = {
//    Name = "dev-rch-dub-lab03"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}
