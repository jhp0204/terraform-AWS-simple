resource "aws_subnet" "example" {
  vpc_id = module.vpc.vpc_id
  cidr_block = module.vpc.cidr_block     
  availability_zone = "us-east-2"
  tags = {
    Name = "example-subnet"
    Purpose = "terraform-presentation"
  }
}
