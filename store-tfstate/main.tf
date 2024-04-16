resource "aws_instance" "HCL-Learning-test" {
  tags = {
    Name = "EC2_created_from_terraform"
  }
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
}