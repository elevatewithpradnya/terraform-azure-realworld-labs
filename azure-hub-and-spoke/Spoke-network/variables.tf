variable "spoke_admin_username" {
  description = "Admin username for the virtual machines"
  type        = string
}

variable "spoke_admin_password" {
  description = "Admin password for the virtual machines"
  type        = string
  sensitive   = true
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}