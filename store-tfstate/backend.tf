terraform {
  backend "s3" {
    bucket = "tfstate-store123"
    key = "store-tf-state/terraform.tfstate" // path to where the file store- ex: tfstate-store123/store-tf-state/terraform.tfstate
    region = "ap-south-1"
  }
}