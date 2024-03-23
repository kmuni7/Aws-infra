resource "aws_iam_user" "lb" {
    name = "load-balancer.${count.index}"
    count = 3
}