resource "aws_iam_user" "lb" {
    name = var.iam-user[count.index]
    count = 3
}