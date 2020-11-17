# Note : cidrs are 'source cidrs'

resource "aws_security_group" "vpc_public_sg" {
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  # see Terraform Up and Running v1 page 50
  lifecycle {
    create_before_destroy = true
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all incoming ICMP including ping
  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "dev-rch-sg-01"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM = "NETWORK"
    BUILT_BY   = "TERRAFORM"
    STACK = "NETWORK"
    PURPOSE = "SANDBOX_LAB"
  }

}
