
# 🧪 Lab 1 | Terraform Import (CLI)

## 🎯 Objective

This lab covers:
- Importing a **Resource Group**
- Importing a **dependent Virtual Network**
- Understanding **import order and dependencies**
---

## 🧠 Why This Lab Matters
Real-world Azure environments already exist before Terraform is introduced.

Interviewers expect you to:
- Import resources in the **correct order**
- Understand **dependencies**
- Avoid destructive changes in production

This lab simulates a **real enterprise brownfield scenario**.

## 📘 Scenario
- An Azure **Resource Group** and **Virtual Network** were created manually
- Terraform is introduced later
- Infrastructure is **live in production**
- Recreating resources is **not allowed**

Your task is to **bring both resources under Terraform management safely**.

- An Azure Resource Group was created manually via the Azure Portal
- Terraform was introduced later
- The resource is live in production
- Recreating the resource is not allowed

Your task is to **bring the existing resource under Terraform management safely**.

---

## 🎯 Outcome
By the end of this lab, you will be able to:
- Import an Azure Resource Group into Terraform state
- Import a Virtual Network that depends on the Resource Group
- Validate zero infrastructure changes
- Explain dependency-aware imports in interviews

---

## 🛠️ Prerequisites
- Azure subscription
- Azure CLI authenticated  
- Terraform v1.3 or later

Existing Azure resources:
- Resource Group: RG-Prod
- Virtual Network: Vnet-Prod

## 🚦 Step-by-Step Instructions

Step 1 — Create Terraform Configuration

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

⚠️ The configuration must exactly match the existing resource.

Step 2 — Initialize Terraform

terraform init

Step 3 — Import the Existing Resource

Run the import command (1st import RG and validate and repeat the same steps for importing Vnet):

Check Resource ID : 
Open Azure Portal -->Navigate to the resource (RG or VNet) --> Go to Properties -->Copy Resource ID

terraform import azurerm_resource_group.rg /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/prod-rg


<img width="1787" height="257" alt="image" src="https://github.com/user-attachments/assets/d93f7a82-2e8a-4eb4-a8b2-f7ae28329cae" />

Run the import command:

terraform import azurerm_resource_group.rg \
/subscriptions/<SUBSCRIPTION_ID>/resourceGroups/prod-rg

This command:

Updates Terraform state
Does not create or delete any infrastructure

Step 4 — Validate with Terraform Plan
terraform plan


Expected output:
No changes. Infrastructure is up-to-date.
<img width="1463" height="143" alt="image" src="https://github.com/user-attachments/assets/e041ebc3-9625-4c16-b0ea-caa562529284" />

This confirms:

Terraform state matches Azure
The import was successful
No destructive changes will occur


<img width="2000" height="600" alt="image" src="https://github.com/user-attachments/assets/748464c7-edf6-44a5-82ef-982407a49ee4" />


