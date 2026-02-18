resource "azurerm_resource_group" "hub_rg" {
  name     = var.rg_name
  location = var.location
}

module "hub" {
  source             = "./Hub-network"
  rg_name            = azurerm_resource_group.hub_rg.name
  location           = azurerm_resource_group.hub_rg.location
  hub_admin_username = "azureuser"
  hub_admin_password = "Azure12345678"

}

module "spoke" {
  source               = "./Spoke-network"
  rg_name              = azurerm_resource_group.rg.name
  location             = azurerm_resource_group.rg.location
  spoke_admin_username = var.spoke_admin_username
  spoke_admin_password = var.spoke_admin_password
}
