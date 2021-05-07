#resource "aws_security_group" "allow_22_all" {
#  name = "allow_22_all"
#  description = "allow ssh port from all"
#  vpc_id = module.vpc.vpc_id
#  ingress {
#    cidr_blocks = [ "0.0.0.0/0" ]
#    from_port = 22
#    to_port = 22
#    protocol = "tcp"
#  }
#  egress {
#    cidr_blocks = [ "0.0.0.0/0"]
#    from_port = 0
#    to_port = 0
#    protocol = "-1"
#  }
#  tags = {
#    Name =  "allow_22_all"
#    Purpose = "terraform-presentation"
#  }
#}
