resource "azurerm_resource_group" "hub_rg" {
  name     = "rg-hub"
  location = "Centralindia"
}

module "hub" {
  source   = "./Hub-network"
  hub_admin_username = "azureuser"
  hub_admin_password = "Azure12345678"

}

module "spoke" {
  source        = "./Spoke-network"
  spoke_admin_username = var.spoke_admin_username
  spoke_admin_password = var.spoke_admin_password
}
