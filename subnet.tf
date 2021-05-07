resource "aws_subnet" "example" {
  vpc_id = module.vpc.vpc_id
  cidr_block ="172.31.20.0/20"     
#  availability_zone = "us-east-2"
  tags = {
    Name = "example-subnet"
    Purpose = "terraform-presentation"
  }
}
