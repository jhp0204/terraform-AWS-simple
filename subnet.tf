resource "aws_subnet" "example" {
  vpc_id = module.vpc.vpc_id 
  availability_zone = "us-east-2"
  tags = {
    Name = "example-subnet"
    Purpose = "terraform-presentation"
  }
}
