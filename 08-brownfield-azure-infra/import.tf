#Import existing resource group and virtual network

import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet"
}

import {

  to = azurerm_virtual_network.vnet
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev"
}

import {
  to = azurerm_subnet.subnet
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/subnet-dev-01"
}

import {
  to = azurerm_subnet.subnet2
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/suvnet-dev-02"
}