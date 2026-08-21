resource "azurerm_virtual_network" "vnet" {
  address_space                  = ["10.0.0.0/16"]
  location                       = var.location
  name                           = "vnet-dev"
  resource_group_name            = var.resource_group_name
  }