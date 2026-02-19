output "hub-vnet-name" {
  value = azurerm_virtual_network.hub_vnet.name
}

output "spoke-app-vnet-id" {
  value = azurerm_virtual_network.hub_vnet
}