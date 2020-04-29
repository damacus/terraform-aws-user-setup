# Terraform AWS User Setup

Terraform AWS module for adding optionally enabled MFA

## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name           | Description                                                                         | Type           | Default | Required |
| -------------- | ------------------------------------------------------------------------------------ | -------------- | ------- | :------: |
| administrators | A list of strings containing the administrator users.                                | `list(string)` | n/a     |   yes    |
| users          | A list of strings containing the users to create.                                    | `list(string)` | n/a     |   yes    |

## Outputs

| Name                                        | Description |
| ------------------------------------------- | ----------- |
| aws\_iam\_group\_administrators             | n/a         |
| aws\_iam\_group\_membership\_administrators | n/a         |
| aws\_iam\_group\_membership\_users          | n/a         |
| aws\_iam\_group\_users                      | n/a         |
