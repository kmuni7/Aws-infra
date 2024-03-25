provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4" // when you change this ami-id, this file without lifecycle- basically deletes an instance and create anew one
    instance_type = "t2.micro"

    tags = {
        Name = "MuniKailasam"
    }
    lifecycle {     //this life cycle with `create_before_destroy` helps us to create a instance 1st and then later it destroys the old
      create_before_destroy = true
    }
}
