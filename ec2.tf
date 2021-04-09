resource "aws_instance" "example" {
  ami           = "ami-09246ddb00c7c4fef"
  instance_type = "t2.micro"
  subnet_id = "subnet-1c1e0466"
  vpc_security_group_ids = [aws_security_group.allow_22_all.id]
  key_name = "terraform-keypair"
  tags = {
    Name = "demo-ansible-instance"
    Purpose = "Terraform Ansible Connection test123"
  }
  connection {
    user = "ubuntu"
    type = "ssh"
    ## Connection 부분 현재 hosts argument 부재로 인한 Error 발생
    private_key = file("~/.ssh/authorized_keys") # 해당 부분 수정이 필요한지 check 실제 폴더에 있는 파일은 authorized_keys이지만, pem파일명은 terraform-keypair.pem 이다.
    ## private_key 부분 현재 Error 발생
    timeout     = "3m"
  }
  
  provisioner "remote-exec" {
    inline = [
      "sudo yum update",
      "sudo yum install -y python",
    ]
  }
#   provisioner "local-exec" {
#     command = <<EOF
#       echo "[demo]" > inventory
#       echo "${aws_instance.example.public_ip} ansible_ssh_user=ubuntu ansible_ssh_private_key_file=~/.ssh/your_private_key.pem" >> inventory
#       EOF
#   }
#   provisioner "local-exec" {
#     command = <<EOF
#       ANSIBLE_HOST_KEY_CHECKING=False \
#       ansible-playbook -i inventory playbook.yml
#       EOF
#   }
}
