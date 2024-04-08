resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
#   egress { //if you remove the egress, it means the outbound request is not actvated, which means.. the work of proviosners will not happen
#     description = "Outbound Allowed"//and throws error
#     from_port   = 0
#     to_port     = 65535
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
}


resource "aws_instance" "myec2" {
   ami = "ami-051f8a213df8bc089"
   instance_type = "t2.micro"
   key_name = "Key alone"
   vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

   provisioner "remote-exec" {
     inline = [
       "sudo yum -y install nano"
     ]
   }
   provisioner "remote-exec" {
       when    = destroy
       inline = [
         "sudo yum -y remove nano"
       ]
     }
   connection {
     type = "ssh"
     user = "ec2-user"
     private_key = file("./Key alone.pem")
     host = self.public_ip
   }
}