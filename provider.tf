terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#module "vpc" {
#  source = "github.com/jhp0204/terraform-aws-simple/vpc/"
#}

  ## module 변경 테스트 시, 사용
# module "vpc" {
#   source = "github.com/jhp0204/terraform-aws-vpc"
# }
  
