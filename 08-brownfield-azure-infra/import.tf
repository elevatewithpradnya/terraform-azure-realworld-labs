#Import existing resource group and virtual network

import {

  # module.modulename.resource_type.resource_name
  to = module.resource_group.azurerm_resource_group.rg
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet"
}

import {
  to = module.resource_group.azurerm_resource_group.keyvaultdemo
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Keyvault-demo"
}

import {

  to = module.network.azurerm_virtual_network.vnet
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev"
}

import {
  to = module.network.azurerm_subnet.subnet
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/subnet-dev-01"
}

import {
  to = module.network.azurerm_subnet.subnet2
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/subnet-dev-02"
}

import {
  to = module.network.azurerm_public_ip.publicip
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/publicIPAddresses/vm-linux-01-ip"
}

import {
  to = module.vm.azurerm_network_interface.nic
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/networkInterfaces/vm-linux-01679"
}

import {
  to = module.vm.azurerm_virtual_machine.vm
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Compute/virtualMachines/vm-linux-01"
}

import {
  to = module.keyvault.azurerm_key_vault.kv
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Keyvault-demo/providers/Microsoft.KeyVault/vaults/kv-dev-app01"
}