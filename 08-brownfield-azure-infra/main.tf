terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.5"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
# __generated__ by Terraform

resource "azurerm_resource_group" "rg" {
  location   = "centralindia"
  name       = "Vnet"
  tags       = {}
}

resource "azurerm_virtual_network" "vnet" {
  address_space                  = ["10.0.0.0/16"]
  location                       = "centralindia"
  name                           = "vnet-dev"
  resource_group_name            = azurerm_resource_group.rg.name
}

# __generated__ by Terraform from "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/subnet-dev-01"
resource "azurerm_subnet" "subnet" {
  address_prefixes                              = ["10.0.0.0/24"]
  name                                          = "subnet-dev-01"
  virtual_network_name                          = azurerm_virtual_network.vnet.name
  resource_group_name                           = azurerm_resource_group.rg.name
  default_outbound_access_enabled = false
}

# __generated__ by Terraform from "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/virtualNetworks/vnet-dev/subnets/suvnet-dev-02"
resource "azurerm_subnet" "subnet2" {
  address_prefixes                              = ["10.0.1.0/27"]
  name                                          = "suvnet-dev-02"
  resource_group_name                           = azurerm_resource_group.rg.name
  virtual_network_name                          = azurerm_virtual_network.vnet.name
  default_outbound_access_enabled = true
}
