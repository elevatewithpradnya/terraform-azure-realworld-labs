resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

module "infra" {
  source   = "./Infra"
  location = var.location
  rg_name  = var.rg_name
  depends_on = [ azurerm_resource_group.rg ]
}

