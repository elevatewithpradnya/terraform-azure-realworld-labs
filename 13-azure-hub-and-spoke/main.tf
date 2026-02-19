resource "azurerm_resource_group" "hub_rg" {
  name     = var.rg_name
  location = var.location
}

module "hub" {
  source     = "./Hub-network"
  rg_name    = var.rg_name
  location   = var.location
  depends_on = [azurerm_resource_group.hub_rg]

}

module "spoke" {
  source               = "./Spoke-network"
  rg_name              = var.rg_name
  location             = var.location
  spoke_admin_username = var.spoke_admin_username
  spoke_admin_password = var.spoke_admin_password
  depends_on = [ azurerm_resource_group.hub_rg ]
}

resource "azurerm_virtual_network_peering" "hub-spoke-appvenet-peering" {
  name                         = "hub-to-spoke-appvnet"
  resource_group_name          = var.rg_name
  virtual_network_name         = module.hub.hub_vnet_name
  remote_virtual_network_id    = module.spoke.spoke_app_vnet_id
  allow_virtual_network_access = true
  depends_on                   = [module.hub, module.spoke]
}


resource "azurerm_virtual_network_peering" "spoke-appvnet-hub-peering" {
  name                         = "spoke-appvnet-to-hub"
  resource_group_name          = var.rg_name
  virtual_network_name         = module.spoke.spoke_app_vnet_name
  remote_virtual_network_id    = module.hub.hub_vnet_id
  allow_virtual_network_access = true
  depends_on                   = [module.hub, module.spoke]

}

