variable "ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "ec2-user"
}

variable "public_key_path" {
  description = "Path to the public SSH key you want to bake into the instance."
  default     = "~/.ssh/id_dsa.pub"
}
