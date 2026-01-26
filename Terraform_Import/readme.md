Terraform Import Lab – Azure (Hands-On)

## 🎯 Objective

This lab demonstrates how to bring existing Azure resources under Terraform management using terraform import, without recreating or modifying them.
This is a real-world scenario commonly asked in DevOps / Cloud interviews.

## 🏗 Existing Azure Resources (Already Created)

| Resource Type | Resource Name |
|--------------|---------------|
| Resource Group | AKS |
| Azure Container Registry (ACR) | acrdemo2101 |
| Virtual Network (VNet) | vnet-aks |


⚠️ Important:
These resources must NOT be recreated or changed by Terraform.

## 📁 Repository Structure

terraform-import-azure/
│
├── main.tf
├── rg.tf
├── acr.tf
├── vnet.tf
├── .gitignore
└── README.md

## 🔧 Prerequisites

Ensure the following are installed and configured:

Azure CLI (az)
Terraform >= 1.5
Azure subscription access
VS Code (recommended)

Login to Azure:

az login
az account set --subscription <subscription-id>

🔹 Step 1: Provider Configuration (main.tf)

🔹 Step 2: Define Resource Blocks (NO values yet)
Resource Group (rg.tf)
Azure Container Registry (acr.tf)
Virtual Network (vnet.tf)

👉 These blocks do not create anything yet.
They are required so Terraform knows what to map imported resources to.

🔹 Step 3: Initialize Terraform
Execite terraform init

🔹 Step 4: Import Existing Resources

Command : terraform import 

1️⃣ Import Resource Group
terraform import azurerm_resource_group.rg /subscriptions/<subscription-id>/resourceGroups/AKS

2️⃣ Import Azure Container Registry
terraform import azurerm_container_registry.acr /subscriptions/<subscription-id>/resourceGroups/AKS/providers/Microsoft.ContainerRegistry/registries/acrdemo2101

3️⃣ Import Virtual Network
terraform import azurerm_virtual_network.vnet /subscriptions/<subscription-id>/resourceGroups/AKS/providers/Microsoft.Network/virtualNetworks/vnet-aks

🔹 Step 5: Verify Imported State
terraform state list

Output:

azurerm_resource_group.rg
azurerm_container_registry.acr
azurerm_virtual_network.vnet

🔹 Step 6: Align Configuration with Azure 

Run: terraform plan

⚠️ If Terraform shows changes, update .tf files to match the actual Azure configuration.

🔹 Step 7: Validate (Optional but Recommended)
terraform validate
terraform fmt


⭐ If You Found This Useful Star ⭐ the repo

<img width="2000" height="600" alt="Aboutme" src="https://github.com/user-attachments/assets/c502c917-701c-4ef0-9343-8d72700c3264" />


