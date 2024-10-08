provider "aws" {
  region = "${var.aws_region}"
  profile = "${var.profile}"
}

provider "aws" {
  alias = "accepter"
  region  = "${var.aws_region}"
  #profile = "${var.accepter_profile}"
}

terraform {
   backend "s3" {
    bucket="s3statebackend4231new"
    dynamodb_table = "state-lock"
    key="s3statebackend4231new/dev/statefile/terraform.tfstate"
    region = "eu-north-1"
    }
}
