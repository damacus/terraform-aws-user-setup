output "aws_iam_group_users" {
  value = aws_iam_group.users
}

output "aws_iam_group_membership_users" {
  value = aws_iam_group_membership.users
}

output "aws_iam_group_administrators" {
  value = aws_iam_group.administrators
}

output "aws_iam_group_membership_administrators" {
  value = aws_iam_group_membership.administrators
}
