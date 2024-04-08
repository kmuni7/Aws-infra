resource "aws_instance" "myec2" {
   ami = "ami-051f8a213df8bc089"
   instance_type = "t2.micro"
   key_name = "Key alone" #launch ec2 from keypair name to connect to instance

   provisioner "local-exec" {
     command = "echo ${aws_instance.myec2.public_ip} >> private_ip.txt" //this creates a file storing public ip address typo error private key file name
     }
   }