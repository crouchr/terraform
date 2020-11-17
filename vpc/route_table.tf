//resource "aws_route_table" "dmz_subnets" {
//  vpc_id = "${aws_vpc.lab01.id}"
//    tags = {
//    Name = "dev-rch-dub-lab01-dmz"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}
//
//resource "aws_route_table" "application_subnets" {
//  vpc_id = "${aws_vpc.lab01.id}"
//      tags = {
//    Name = "dev-rch-dub-lab01-application"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}
//
//resource "aws_route_table" "data_subnets" {
//  vpc_id = "${aws_vpc.lab01.id}"
//      tags = {
//    Name = "dev-rch-dub-lab01-data"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}

resource "aws_route_table" "public_subnets_lab01" {
  vpc_id = aws_vpc.lab01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-rch-igw.id
  }

  tags = {
    Name = "dev-rch-dub-lab01-public"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM = "NETWORK"
    BUILT_BY   = "TERRAFORM"
    STACK = "NETWORK"
    PURPOSE = "SANDBOX_LAB"
  }
}

//resource "aws_route_table" "public_subnets_lab02" {
//  vpc_id = "${aws_vpc.lab02.id}"
//  tags = {
//    Name = "dev-rch-dub-lab02-public"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}
//
//resource "aws_route_table" "public_subnets_lab03" {
//  vpc_id = "${aws_vpc.lab03.id}"
//  tags = {
//    Name = "dev-rch-dub-lab03-public"
//    ENVIRONMENT = "DEVELOPMENT"
//    OWNER_TEAM = "NETWORK"
//    BUILT_BY   = "TERRAFORM"
//    STACK = "NETWORK"
//    PURPOSE = "SANDBOX_LAB"
//  }
//}
