resource "azurerm_container_registry" "acr" {
  resource_group_name = azurerm_resource_group.rg.name
  name = "acrdemo2101"
  location = azurerm_resource_group.rg.location
  sku = "Basic"
}