resource "azurerm_subnet" "subnet" {
  address_prefixes                              = ["10.0.0.0/24"]
  default_outbound_access_enabled               = false
  name                                          = "subnet-dev-01"
  private_link_service_network_policies_enabled = true
  resource_group_name                           = var.resource_group_name
  virtual_network_name                          = azurerm_virtual_network.vnet.name
  depends_on                                    = [azurerm_virtual_network.vnet]
}

resource "azurerm_subnet" "subnet2" {
  address_prefixes                              = ["10.0.1.0/28"]
  default_outbound_access_enabled               = true
  name                                          = "subnet-dev-02"
  resource_group_name                           = var.resource_group_name
  virtual_network_name                          = azurerm_virtual_network.vnet.name
  depends_on                                    = [azurerm_virtual_network.vnet]
}
