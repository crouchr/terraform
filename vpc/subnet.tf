resource "aws_subnet" "public_subnet_lab01" {
  vpc_id = aws_vpc.lab01.id
  cidr_block = "10.90.1.0/25"

  availability_zone = "eu-west-1a"

  map_public_ip_on_launch = true

  tags = {
    Name = "dev-rch-dub-lab01"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM = "NETWORK"
    BUILT_BY   = "TERRAFORM"
    STACK = "NETWORK"
    PURPOSE = "SANDBOX_LAB"
  }
}

//resource "aws_subnet" "public_subnet_lab02" {
//  vpc_id = "${aws_vpc.lab02.id}"
//  cidr_block = "10.90.2.0/25"
//    tags = {
//    Name = "dev-rch-dub-lab02"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}

//resource "aws_subnet" "public_subnet_lab03" {
//  vpc_id = "${aws_vpc.lab03.id}"
//  cidr_block = "10.90.3.0/25"
//    tags = {
//    Name = "dev-rch-dub-lab03"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}
