# Create EIP for WAF NLB

resource "aws_eip" "waf_nlb_eip" {
  vpc = true

  lifecycle {
    prevent_destroy = false
  }

 tags = {
    Name = "dev-rch-nlb-eip"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM = "NETWORK"
    BUILT_BY   = "TERRAFORM"
    STACK = "NETWORK"
    PURPOSE = "SANDBOX_LAB"
  }
}
