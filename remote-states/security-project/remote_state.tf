data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
    bucket = "tfstate-store123"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
  }
}
