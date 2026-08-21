resource "azurerm_key_vault" "kv" {
  location                      = var.kv_location
  name                          = "kv-dev-app01"
  public_network_access_enabled = true
  resource_group_name           = var.kv_resource_group_name
  sku_name                      = "standard"
  soft_delete_retention_days    = 90
  tenant_id                     = var.tenant_id
}