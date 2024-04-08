resource "aws_instance" "myec2" {
   ami = "ami-051f8a213df8bc089"
   instance_type = "t2.micro"
   key_name = "Key alone" #launch ec2 from keypair name to connect to instance

   connection {
   type     = "ssh"
   user     = "ec2-user"
   private_key = file("./Key alone.pem") #key pair value to connect to ec2
   host     = self.public_ip
    }

 provisioner "remote-exec" {
   inline = [
    # Updating with the latest command for Amazon Linux machine
     "sudo yum install -y nginx",
     "sudo systemctl start nginx"
   ]
 }
}