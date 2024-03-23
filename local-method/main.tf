resource "aws_instance" "Dev" {
    ami = "ami-12345"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_instance" "prod" {
    ami = "ami-12345"
    instance_type = "t2.small"
    tags = local.common_tags
}