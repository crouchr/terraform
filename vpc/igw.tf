resource "aws_internet_gateway" "dev-rch-igw" {
  vpc_id = aws_vpc.lab01.id

  tags = {
    Name = "dev-rch-igw-01"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM = "NETWORK"
    BUILT_BY = "TERRAFORM"
    STACK = "NETWORK"
    PURPOSE = "SANDBOX_LAB"
  }
}