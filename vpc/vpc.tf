resource "aws_vpc" "vpc" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
  }
}


