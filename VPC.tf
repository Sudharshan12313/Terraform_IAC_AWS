terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  ##shared_config_files      = ["/c/Users/s.reddy.siddamurthi/.aws/config"]
  ##shared_credentials_files = ["/c/Users/s.reddy.siddamurthi/.aws/credentials"]
  region = "eu-north-1"
  profile = "sudha"
}

# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}