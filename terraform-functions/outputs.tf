output "timestamp" {
  value = local.time
}
output "ami" {
  value = aws_instance.app-dev.ami
}