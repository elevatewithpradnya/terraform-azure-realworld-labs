# 🧪 Lab 1 — Terraform Import (CLI)

## 🎯 Objective
Learn how to **safely adopt existing Azure infrastructure** into Terraform using the
`terraform import` command **without downtime**.

This lab focuses on **brownfield environments**, not greenfield demos.

---

## 🧠 Why This Lab Matters
Most Terraform tutorials teach how to **create** infrastructure.
Real-world projects require you to **manage infrastructure that already exists**.

Interviewers expect you to understand:
- When to use `terraform import`
- What it does and does *not* do
- How to avoid destructive changes in production

---

## 📘 Scenario
- An Azure Resource Group was created manually via the Azure Portal
- Terraform was introduced later
- The resource is live in production
- Recreating the resource is not allowed

Your task is to **bring the existing resource under Terraform management safely**.

---

## 🎯 Outcome
By the end of this lab, you will be able to:
- Import an existing Azure resource into Terraform state
- Validate that no infrastructure changes occur
- Explain this workflow clearly in interviews

---

## 🛠️ Prerequisites
- Azure subscription
- Azure CLI authenticated
  ```bash
  az login

  🚦 Step-by-Step Instructions
Step 1 — Create Terraform Configuration

Create a file named main.tf:

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "prod-rg"
  location = "eastus"
}


⚠️ The configuration must exactly match the existing resource.

Step 2 — Initialize Terraform
terraform init

Step 3 — Import the Existing Resource

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


This confirms:

Terraform state matches Azure

The import was successful

No destructive changes will occur

❌ What terraform import Does NOT Do

Does not generate .tf files

Does not fix configuration mismatches

Does not import dependent resources automatically

Configuration accuracy remains your responsibility.
