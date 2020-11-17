resource "aws_route_table_association" "public_subnet_lab01" {
  subnet_id = aws_subnet.public_subnet_lab01.id
  route_table_id = aws_route_table.public_subnets_lab01.id
}

//resource "aws_route_table_association" "public_subnet_lab02" {
//  subnet_id = "${aws_subnet.public_subnet_lab02.id}"
//  route_table_id = "${aws_route_table.public_subnets_lab02.id}"
//}
//
//resource "aws_route_table_association" "public_subnet_lab03" {
//  subnet_id = "${aws_subnet.public_subnet_lab03.id}"
//  route_table_id = "${aws_route_table.public_subnets_lab03.id}"
//}
