#Import existing resource group and virtual network

import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet"
}

import {
  to = azurerm_resource_group.keyvaultdemo
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Keyvault-demo"
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
  id= "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/subnet-dev-02"
}

import {
  to = azurerm_public_ip.publicip
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/publicIPAddresses/vm-linux-01-ip"
}

import {
  to = azurerm_network_interface.nic
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/networkInterfaces/vm-linux-01-nic"
}

import {
  to = azurerm_virtual_machine.vm
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Compute/virtualMachines/vm-linux-01"
}

import {
  to = azurerm_key_vault.kv
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Keyvault-demo/providers/Microsoft.KeyVault/vaults/kv-dev-app01"
}