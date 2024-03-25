resource "aws_instance" "myec2" {
    ami = "ami-0d7a109bf30624c99"
    for_each = {
        key1 = "t2.micro"
        key2 = "t1.micro"
    }
    instance_type = each.value # 1st take value of key1 and then take key2 ......(from 1 2 3 ..... xxx)
    key_name = each.key # 1st takes values of t2.micro, next t1.micro and goes (from 1 2 3 ..... xxx)
    tags = {
        name = each.value
    }
}