variable "admin_username" {
  description = "Admin username for the virtual machines"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the virtual machines"
  type        = string
  sensitive   = true
}


