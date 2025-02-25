variable "ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "ec2-user"
}

variable "private_key_path" {
  description = "Path to the private SSH key you want to bake into the instance."
  default     = "/home/ec2-user/.ssh/id_rsa"
}

variable "key_name" {}
variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
