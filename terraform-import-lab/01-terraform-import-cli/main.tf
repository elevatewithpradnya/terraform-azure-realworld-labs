terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a96db7f9-f077-48d6-9d2e-68075185bc77"
  client_id       = "65d199e5-f822-4b65-97a3-9c1b83894ed4"
  client_secret   = "sIv8Q~Ajj4V4JVRMebGHfxVs-6WaJtcwElJFhdB9"
  tenant_id       = "b3e33edc-ced7-433a-9f35-93df9317d7a4"
}

resource "azurerm_resource_group" "rg" {
  name     = "RG-Prod"
  location = "centralindia"
}

# resource "azurerm_virtual_network" "vnet" {
#   name                = "vnet-prod"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
# }