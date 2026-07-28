# Terraform Import – Azure Brownfield Infrastructure Lab

This lab demonstrates how to import existing Azure infrastructure into Terraform using **Terraform Import Blocks** and the **`terraform plan -generate-config-out`** feature.

Instead of creating new resources with Terraform, this project focuses on a **Brownfield** scenario where infrastructure already exists in Azure and needs to be brought under Infrastructure as Code (IaC) management.

## Lab Overview

In this lab, you will:

- Create Azure networking resources manually using the Azure Portal.
- Import existing resources into Terraform.
- Generate Terraform configuration automatically.
- Refactor the generated configuration into reusable Terraform files.
- Manage the imported infrastructure using Terraform.

## Architecture

The following Azure resources are created manually before importing into Terraform:

- Resource Group
- Virtual Network
- Subnet 1
- Subnet 2

After the import, Terraform becomes the source of truth for managing these resources.

Azure Portal
      │
      ▼
Resource Group
      │
      ▼
Virtual Network
      │
 ┌────┴────┐
 ▼         ▼
Subnet-01  Subnet-02
      │
      ▼
Terraform Import
      │
      ▼
Terraform State
      │
      ▼
Infrastructure as Code


# Repository Structure

08-brownfield-azure-infra/
│
├── main.tf
├── variables.tf
├── terraform.tfvars
├── import.tf
├── .gitignore
├── generated.tf (Generated after terraform plan)
└── README.md

# Prerequisites

Before starting this lab, ensure you have:

- Azure Subscription
- Azure CLI
- Terraform v1.5 or later
- Contributor access to the Azure Subscription

Login to Azure:

az login

Set the correct subscription:

az account set --subscription "<subscription-id>"
```

Verify:

az account show

# Existing Azure Resources

Create the following resources manually using the Azure Portal.

| Resource | Example |
|----------|----------|
| Resource Group | rg-dev-demo |
| Virtual Network | vnet-dev |
| Subnet 1 | subnet-dev-01 |
| Subnet 2 | subnet-dev-02 |

---

# Step 1 – Create Terraform Files

Create the following files:

main.tf
variables.tf
terraform.tfvars
import.tf
.gitignore

---

# Step 2 – Configure Terraform

Configure:

- Azure Provider
- Resource Group
- Virtual Network
- Subnets
- Variables

Store variable values inside:

terraform.tfvars (I stored my client and secret values)

# Step 3 – Configure Import Blocks

Create an import.tf file.

Add Import Blocks for:

- Resource Group
- Virtual Network
- Subnet 1
- Subnet 2

Use the Azure Resource IDs of the existing resources.

Example Resource ID:

/subscriptions/<subscription-id>/resourceGroups/<rg-name>
OR 
You can copy it from JSOn View from azure portal. 

# Step 4 – Initialize Terraform

Initialize the working directory.

terraform init

Expected output:

Terraform has been successfully initialized.

# Step 5 – Format Terraform Code

terraform fmt

---

# Step 6 – Validate Configuration


terraform validate

Expected output:

Success! The configuration is valid.

# Step 7 – Generate Terraform Configuration

Run:


terraform plan -generate-config-out="generated.tf"

Terraform automatically creates:

generated.tf

This file contains Terraform resource definitions generated from the imported Azure resources.

---

# Step 8 – Review Generated Configuration

Open:

generated.tf

Review the generated configuration.
Copy the required resources into:

main.tf

or organize them into separate Terraform files such as:

network.tf
resource-group.tf
providers.tf


Do **not** blindly commit the generated file without reviewing it.

---

# Step 9 – Verify Import Plan

Run Terraform Plan again.

terraform plan

Expected output:

Plan: 4 to import, 0 to add, 0 to change, 0 to destroy.

This confirms Terraform has identified the existing Azure resources correctly.


# Step 10 – Import Existing Resources

Execute:

terraform apply

Terraform imports the following resources into its state file:

- Resource Group
- Virtual Network
- Subnet 1
- Subnet 2

No new infrastructure is created.

---

# Verify Terraform State

List imported resources.

terraform state list

Example:

azurerm_resource_group.rg
azurerm_virtual_network.vnet
azurerm_subnet.subnet1
azurerm_subnet.subnet2

---

# Learning Outcomes

After completing this lab, you will understand:

- Brownfield Infrastructure Projects
- Terraform Import Blocks
- Generated Terraform Configuration
- Azure Resource IDs
- Infrastructure as Code Migration
- Terraform Best Practices

---

# Common Mistakes

Avoid these common issues:

- Forgetting to run `terraform init`
- Using incorrect Azure Resource IDs
- Committing `generated.tf` without review
- Editing Azure resources manually after importing them
- Committing `terraform.tfstate` into Git

---

# Best Practices

- Keep Terraform code under Git version control.
- Review generated configuration before using it.
- Use feature branches for infrastructure changes.
- Store Terraform state remotely in Azure Storage.
- Use modules as your infrastructure grows.
- Never hardcode secrets in Terraform code.

---

## Connect With Me

If you found this project useful, consider:

- Starring this repository
- Following me on GitHub
- Connecting with me on LinkedIn
- Reading the accompanying Medium article

Happy Learning!