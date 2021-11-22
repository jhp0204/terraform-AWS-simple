terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
provider "aws" {
  region = "us-east-2"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

#SSH TEST
module "vpc" {
 source = "git@github.com:jhp0204/terraform-aws-simple/vpc.git"
}

# #TEST AFTER TERRAFORM PROVIDER CHANGED
# module "vpc" {
#  source = "github.com/jhp0204/terraform-aws-simple/vpc/"
# }

  ## module 변경 테스트 시, 사용
# module "vpc" {
#   source = "github.com/jhp0204/terraform-aws-vpc"
# }
  
