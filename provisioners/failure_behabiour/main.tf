//this resource basically should fail as, there is no outbound rule for a provisioner to instaall packages  
// But still runs as "on_failure" is added
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
		}

resource "aws_instance" "myec2" {
	ami = "ami-0b1e534a4ff9019e0"
	instance_type = "t2.micro"
	key_name = "Key alone"
	vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

	provisioner "remote-exec" {
	on_failure = continue
		inline = [
			"sudo yum -y install nano"
			]
		}
	connection {
		type = "ssh"
		user = "ec2-user"
			private_key = file("./Key alone.pem")
				host = self.public_ip
			}
			}
