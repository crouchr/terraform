resource "aws_route" "VPC_Internet_Access" {
  route_table_id = aws_route_table.public_subnets_lab01.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.dev-rch-igw.id
}
