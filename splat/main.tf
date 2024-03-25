resource "aws_iam_user" "lb" {
  name = var.iamuser[count.index]
  count = 3
  path = "/system/"
}
