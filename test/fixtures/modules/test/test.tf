module "users" {
  source         = "../../../.."
  users          = ["dwebb", "bobc"]
  administrators = ["dwebb"]
}

provider "aws" {
  region = "eu-west-1"
}
