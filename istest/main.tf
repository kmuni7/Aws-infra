resource "aws_instance" "Dev" {
    ami = "ami-0123456"
    instance_type = "t2.micro" 
    count = var.istest == true ? 1 : 0 #gere one is no.of Ec2's to be created. you can change this to any.
}

resource "aws_instance" "prod"{
    ami = "ami-0123456"
    instance_type = "t2.large"
    count = var.istest == false ? 1 : 0
}