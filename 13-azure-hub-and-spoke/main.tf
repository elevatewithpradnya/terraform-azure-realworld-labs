resource "azurerm_resource_group" "hub_rg" {
  name     = "rg-hub"
  location = "Centralindia"
}

module "hub" {
  source   = "./modules/hub-network"
  rg_name  = azurerm_resource_group.rg.name
  location = var.location
}

module "spoke" {
  source        = "./modules/spoke-network"
  vnet_name     = "spoke1-vnet"
  address_space = ["10.1.0.0/16"]
  rg_name       = azurerm_resource_group.rg.name
  location      = var.location
}
