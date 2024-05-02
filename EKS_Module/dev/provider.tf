#provider "aws" {
#  region = "${var.aws_region}"
#  profile = "${var.profile}"
#}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "${var.aws_region}"
}



#terraform {
#   backend "s3" {
#    bucket="s3statebackend4231new"
#    #dynamodb_table = "state-lock"
#    key="s3statebackend4231new/dev/statefile/terraform.tfstate"
#    region = "eu-north-1"
#    }
#}
