resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  subnet_id = [aws_subnet.example.id]
  vpc_security_group_ids = [aws_security_group.allow_22_all.id]
  key_name = "terraform-keypair"
  tags = {
    Name = "demo-ansible-instance"
    Purpose = "Terraform Enterprise test"
  }
   connection {
     user = var.ssh_user # default= "ec2-user"
     type = "ssh"
     ## Connection 부분 현재 hosts argument 부재로 인한 Error 발생
     private_key = file(var.public_key_path) #default= "~/.ssh/id_dsa.pub" 
     ## private_key 부분 현재 Error 발생
     timeout     = "3m"
     host = aws_instance.example.public_ip
   }
  
   provisioner "remote-exec" {
     inline = [
       "sudo yum update",
       "sudo yum install -y python",
     ]
   }
  
#    provisioner "local-exec" {
#      command = <<EOF
#        echo "[demo]" > inventory
#        echo "${aws_instance.example.public_ip} ansible_ssh_user=ec2-user ansible_ssh_private_key_file=~/.ssh/id_rsa.pub" >> inventory
#        EOF
#    }
#    provisioner "local-exec" {
#      command = <<EOF
#        ANSIBLE_HOST_KEY_CHECKING=False \
#        ansible-playbook -i inventory playbook.yml
#        EOF
#    }
}
