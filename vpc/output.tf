# All resources that other modules need to access must be in here

output "vpc_id" {
  value = "${aws_vpc.lab01.id}"
}

# EC2 instances attach themselves to subnets
output "public_subnet_lab01" {
  value = aws_subnet.public_subnet_lab01.id
}
