resource "aws_instance" "test" {
  ami           = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  count = 3
}
