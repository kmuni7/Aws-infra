resource "aws_security_group" "allow_tls" {
  name        = "Security groups"
  description = "manage from terraform"
  tags = {
    name = "Terraform-SG"
  }
  ingress {
    security_groups = ["sg-028ddf35e4d368b13"]
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    to_port     = 100
    protocol    = "tcp"
  }
  egress {
    security_groups = ["sg-028ddf35e4d368b13"]
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # semantically equivalent to all ports
  }
} 