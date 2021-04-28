var.private_key_path
	variable "public_key_path" {
	  description = "Path to the public SSH key you want to bake into the instance."
	  default     = "~/.ssh/id_dsa.pub"
	}
