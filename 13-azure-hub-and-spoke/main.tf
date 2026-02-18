resource "azurerm_resource_group" "hub_rg" {
  name     = "rg-hub"
  location = "Centralindia"
}

module "hub" {
  source   = "./Hub-network"
  rg_name  = azurerm_resource_group.rg.name
  admin_username = "azureuser"
  admin_password = "Azure12345678"

}

module "spoke" {
  source        = "./modules/spoke-network"
  vnet_name     = "spoke1-vnet"
  address_space = ["10.1.0.0/16"]
  rg_name       = azurerm_resource_group.rg.name
  location      = var.location
}
