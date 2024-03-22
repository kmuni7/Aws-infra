output "public_ip" {
    value = resource.aws_eip.lb.public_ip
}