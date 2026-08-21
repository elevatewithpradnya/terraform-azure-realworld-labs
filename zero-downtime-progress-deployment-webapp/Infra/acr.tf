resource "azurerm_container_registry" "acr" {
  name                = "${var.rg_name}acr"
  resource_group_name = var.rg_name
  location            = var.location
  sku="Standard"
  admin_enabled = "false"

}

resource "azurerm_role_assignment" "acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_linux_web_app.webapp.identity[0].principal_id
}
