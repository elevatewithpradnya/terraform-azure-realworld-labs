resource "azurerm_virtual_network" "spoke_app_vnet" {
  name                = "spoke_app_vnet"
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = ["10.1.0.0/16"]
  }

resource "azurerm_subnet" "appsubnet" {
  name                 = "app_subnet"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.spoke_app_vnet.name
  address_prefixes     = ["10.1.1.0/24"]
  depends_on = [ azurerm_virtual_network.spoke_app_vnet ]
}


