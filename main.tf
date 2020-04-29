variable "users" {
  type        = list(string)
  description = "A list of strings containing the users to create."
}

variable "administrators" {
  type        = list(string)
  description = "A list of strings containing the administrator users."
}

resource "aws_iam_user" "user" {
  for_each = toset(var.users)
  name     = each.key
}

resource "aws_iam_group" "users" {
  name = "users"
}

resource "aws_iam_group_membership" "users" {
  name  = "Users"
  group = aws_iam_group.users.id
  users = var.users
}

resource "aws_iam_group" "administrators" {
  name = "administrators"
}

resource "aws_iam_group_membership" "administrators" {
  name  = "Administrators"
  group = aws_iam_group.administrators.id
  users = var.administrators
}

