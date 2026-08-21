resource "azurerm_resource_group" "keyvaultdemo" {
  location   = "southindia"
  name       = "Keyvault-demo"

}

resource "azurerm_resource_group" "rg" {
  location   = "centralindia"
  name       = "Vnet"
}

