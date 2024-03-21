#For creating instance please only enable -this resource and 
#comment the another resource specially using to manage instance state 
resource "aws_instance" "HCL-Learning-test" {
  tags = {
    Name = "EC2_created_from_terraform"
  }
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
}

/*
While creating the instance please comment the block for stopping the resource
After creating and for managing the Instance state enable the below
State: running- to start the Service, stopped- to stop the Service
*/
# resource "aws_ec2_instance_state" "test" {
#   instance_id = "i-0be17c28649664d94"
#   state       = "stopped"
# }
