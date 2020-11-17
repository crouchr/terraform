# Define the data sources to read from

data "terraform_remote_state" "services" {
  backend = "s3"

  config = {
    bucket = "dev-rch-remote-state-s3"
    key    = "services"
    region = "eu-west-1"
  }
}
