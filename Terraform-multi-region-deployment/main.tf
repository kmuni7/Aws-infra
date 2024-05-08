resource "aws_eip" "byoip-ip" {
  domain           = "vpc"
  public_ipv4_pool = "ipv4pool-ec2-012345"
}

resource "aws_eip" "byoip-ip2" {
  domain           = "vpc"
  public_ipv4_pool = "ipv4pool-ec2-012345"
}