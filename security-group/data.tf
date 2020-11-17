# Define the data sources to read from
data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "dev-rch-remote-state-s3"
    key = "vpc"
    region = "eu-west-1"
  }
}
