resource "azurerm_public_ip" "publicip" {
  allocation_method       = "Static"
  idle_timeout_in_minutes = 4
  ip_version              = "IPv4"
  location                = var.location
  name                    = "vm-linux-01-ip"
  resource_group_name     = var.resource_group_name
  sku                     = "Standard"
  sku_tier                = "Regional"
}