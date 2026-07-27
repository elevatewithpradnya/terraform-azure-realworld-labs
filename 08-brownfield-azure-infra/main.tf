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
  location = "centralindia"
  name     = "Vnet"
  tags     = {}
}

resource "azurerm_virtual_network" "vnet" {
  address_space       = ["10.0.0.0/16"]
  location            = "centralindia"
  name                = "vnet-dev"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  address_prefixes                = ["10.0.0.0/24"]
  name                            = "subnet-dev-01"
  virtual_network_name            = azurerm_virtual_network.vnet.name
  resource_group_name             = azurerm_resource_group.rg.name
  default_outbound_access_enabled = false
}

resource "azurerm_subnet" "subnet2" {
  address_prefixes                = ["10.0.1.0/28"]
  name                            = "subnet-dev-02"
  resource_group_name             = azurerm_resource_group.rg.name
  virtual_network_name            = azurerm_virtual_network.vnet.name
  default_outbound_access_enabled = true
}
