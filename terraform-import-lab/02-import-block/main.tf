terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }
  required_version = ">=1.9.0"
}

provider "azurerm" {
  features {}
  
}


resource "azurerm_resource_group" "rg" {
  name     = "RG-Prod"
  location = "centralindia"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "Vnet-Prod"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/RG-Prod"
}

import {
  to = azurerm_virtual_network.vnet
  id = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/RG-Prod/providers/Microsoft.Network/virtualNetworks/Vnet-Prod"
}

