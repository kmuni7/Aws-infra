terraform {
  backend "s3" {
    bucket = "tfstate-store123"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
  }
}
