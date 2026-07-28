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

module "resource_group" {
  source = "./modules/resourcegroup"
}

module "network" {
  source = "./modules/network"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "vm" {
  source = "./modules/VM"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "keyvault" {
  source = "./modules/keyvault"
  kv_location            = var.kv_location  
  kv_resource_group_name = var.kv_resource_group_name
  tenant_id              = var.tenant_id
  }