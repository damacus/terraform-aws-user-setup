module "users" {
  source         = "../../../.."
  users          = ["dwebb", "bobc"]
  administrators = ["dwebb"]
}

provider "aws" {
  region = var.region
}

variable "region" {
  default = "eu-west-1"
}
