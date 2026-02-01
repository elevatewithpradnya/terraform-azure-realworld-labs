# 🧪 Lab 2 | Terraform Import Block (Declarative Import)

## 🎯 Objective
Learn how to import existing Azure resources into Terraform using **Import Blocks**
— a **declarative, version-controlled, CI/CD-safe** alternative to `terraform import`.

This lab focuses on **team workflows and production environments**.

---

## 🧠 Why This Lab Matters
`terraform import` works well for individuals.  
**Teams and pipelines require repeatability.**

Interviewers expect you to know:
- Why Import Blocks were introduced
- When to prefer them over CLI imports
- How they fit into Git-based workflows

---

## 📘 Scenario
- Azure resources already exist (created via Portal)
- Terraform is introduced later
- Imports must be **tracked in Git**
- CLI-based imports are not allowed in pipelines

Your task is to **adopt existing infrastructure declaratively**.

---

## 🎯 Outcome
By the end of this lab, you will be able to:
- Use Import Blocks to adopt existing Azure resources
- Perform imports safely via `terraform apply`
- Explain why Import Blocks are preferred in CI/CD

---

## 🛠️ Prerequisites
- Terraform **v1.5 or later**
- Azure CLI authenticated  
 
 Existing Azure resources:
- Resource Group: RG-Prod
- Virtual Network: Vnet-Prod

## 🚦 Step-by-Step Instructions

Step 1 : Create Terraform Configuration

Create a file named main.tf:

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-prod"
  location = "centralindia"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-prod"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

Step 2:  Define Import Blocks (main.tf)

import {
  to = azurerm_resource_group.rg
  id = "/subscriptions/<SUBSCRIPTION_ID>/resourceGroups/prod-rg"
}

import {
  to = azurerm_virtual_network.vnet
  id = "/subscriptions/<SUBSCRIPTION_ID>/resourceGroups/prod-rg/providers/Microsoft.Network/virtualNetworks/prod-vnet"
}


⚠️ The configuration must exactly match the existing resource.

Step 3 : Initialize Terraform

## Make sure to update the details for your Azure Service Principal in main.tf

terraform init

Step 4 : Run Terraform Plan (IMPORTANT)
terraform plan

What happens during plan:

Terraform evaluates import blocks
Shows which resources will be imported
No resources are imported yet

Expected output includes lines like:

<img width="535" height="42" alt="image" src="https://github.com/user-attachments/assets/479cabcf-037b-4a63-817a-91855fcd3f48" />

Step 4 : Apply Import Blocks
terraform apply

<img width="721" height="42" alt="image" src="https://github.com/user-attachments/assets/a62a3b6b-6540-4104-909b-d4edc38dbd86" />

Expected behavior:

Terraform imports resources into state
No infrastructure is created or deleted
Import is fully traceable in Git

Step 5 : Validate
terraform plan

<img width="1472" height="183" alt="image" src="https://github.com/user-attachments/assets/d397070d-822d-4372-9773-f49b72ab967b" />


Expected output:

No changes. Infrastructure is up-to-date.


✅ When to Use Import Blocks

Team environments
CI/CD pipelines
Repeatable and auditable imports
Git-driven workflows

⭐ If You Found This Helpful

If this lab helped you understand Terraform Import in real production scenarios:

⭐ Star this repository to save it for future reference
👤 Follow me on GitHub for more real-world Terraform & Azure labs

<img width="2000" height="600" alt="image" src="https://github.com/user-attachments/assets/748464c7-edf6-44a5-82ef-982407a49ee4" />


