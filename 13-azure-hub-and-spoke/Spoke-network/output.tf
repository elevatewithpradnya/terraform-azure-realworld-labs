output "spoke-appvnet-name" {
  value = azurerm_virtual_network.spoke_app_vnet.name
}

output "spoke-appvnet-id" {
  value = azurerm_virtual_network.spoke_app_vnet.id
}

output "spoke-dbvnet-name" {
  value = azurerm_virtual_network.spoke_db_vnet.name
}

output "spoke-dbvnet-id" {
  value = azurerm_virtual_network.spoke_db_vnet.id
}