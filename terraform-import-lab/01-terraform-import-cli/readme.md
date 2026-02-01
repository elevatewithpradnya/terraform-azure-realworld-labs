🎯 Scenario

An Azure Resource Group was created manually using the Azure Portal.
Terraform is introduced later to manage it.

Recreating is not allowed (production).

🎯 Goal

Bring the existing resource under Terraform control

Avoid downtime

Understand what terraform import really does

🛠️ Prerequisites

Azure CLI logged in

Terraform ≥ 1.3

Existing Azure Resource Group (e.g. prod-rg)

🚦 Steps
Step 1 — Create minimal Terraform config
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "prod-rg"
  location = "eastus"
}

Step 2 — Import resource into state
terraform import azurerm_resource_group.rg \
/subscriptions/<sub-id>/resourceGroups/prod-rg

Step 3 — Validate
terraform plan


Expected result:

No changes. Infrastructure is up-to-date.
