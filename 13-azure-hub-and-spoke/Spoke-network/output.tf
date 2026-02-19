output "spoke_app_vnet_name" {
  value = azurerm_virtual_network.spoke_app_vnet.name
}

output "spoke_app_vnet_id" {
  value = azurerm_virtual_network.spoke_app_vnet.id
}

output "spoke_db_vnet_name" {
  value = azurerm_virtual_network.spoke_db_vnet.name
}

output "spoke_db_vnet_id" {
  value = azurerm_virtual_network.spoke_db_vnet.id
}
