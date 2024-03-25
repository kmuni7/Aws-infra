
output "arns" {
  value = aws_iam_user.lb[*].arn #if you want ot see the specific ouput, give the number strts from 0,1,2.... then checkthe output required
}