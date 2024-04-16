terraform {
  backend "s3" {
    bucket = "tfstate-store123"
    key = "store-tf-state/demo.tfstate" // path to where the file store- ex: tfstate-store123/store-tf-state/terraform.tfstate
    region = "ap-south-1"
    dynamodb_table = "lockstate"
  }
}