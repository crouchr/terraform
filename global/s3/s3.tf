# FIXME : Need to add server side encryption to this
# An S3 bucket to hold remote state for all the stages

//terraform {
//  backend "s3" {}
//}


resource "aws_s3_bucket" "terraform_state" {
  bucket = "dev-rch-remote-state-s3"

  # enable once basically working
  versioning {
    enabled = true
  }

  tags = {
    Name        = "dev-rch-remote-state-s3"
    ENVIRONMENT = "DEVELOPMENT"
    OWNER_TEAM  = "NETWORK"
    BUILT_BY    = "TERRAFORM"
    STACK       = "NETWORK"
    PURPOSE     = "SANDBOX_LAB"
  }

  #lifecycle {
  #  prevent_destroy = true
  #}
}
