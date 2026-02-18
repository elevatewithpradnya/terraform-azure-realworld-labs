resource "azurerm_resource_group" "hub_rg" {
  name     = var.rg_name
  location = var.location
}

module "hub" {
  source             = "./Hub-network"
  rg_name            = var.rg_name
  location           = var.location
  hub_admin_username = "azureuser"
  hub_admin_password = "Azure12345678"
  depends_on = [ azurerm_resource_group.hub_rg ]

}

module "spoke" {
  source               = "./Spoke-network"
  rg_name              = var.rg_name
  location             = var.location
  spoke_admin_username = var.spoke_admin_username
  spoke_admin_password = var.spoke_admin_password
  depends_on = [ azurerm_resource_group.hub_rg ]
}
