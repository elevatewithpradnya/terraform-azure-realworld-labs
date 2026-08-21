resource "azurerm_service_plan" "appplan" {
  name                = "${var.rg_name}-appplan"
  location            = var.location
  resource_group_name = var.rg_name
  sku_name = "B1"
  os_type = "Linux"
}