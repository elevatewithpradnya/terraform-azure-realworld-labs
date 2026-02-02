# 🧪 Terraform Lab | Recovering Deleted Remote State in Azure

## 📌 Overview
This lab simulates a **real-world production incident** where a Terraform remote state file stored in **Azure Blob Storage** is accidentally deleted.

You will recover the state **without downtime**, validate infrastructure integrity, and harden the backend to **prevent future incidents**.

This lab demonstrates **production-grade Terraform state management**, not just commands.

---

## 🎯 Learning Objectives
By completing this lab, you will learn how to:

- Safely recover a deleted Terraform remote state
- Validate state integrity without changing infrastructure
- Protect Terraform state from accidental deletion
- Apply Azure best practices for state security
- Explain state recovery clearly in DevOps interviews

---

## 🧰 Prerequisites
- Azure subscription
- Terraform installed
- Existing Terraform configuration using:
  - azurerm` backend
  - Azure Blob Storage for state
- Access to Azure Portal
- Terraform CI/CD pipelines **paused** during recovery

---

## 🚨 Incident Scenario
A team member accidentally deletes the Terraform `.tfstate` file from the Azure Storage container.

As a result:
- Terraform no longer tracks existing infrastructure
- Any `terraform apply` would attempt to recreate resources
- Production is at risk

You are assigned to recover the state **safely and correctly**.

---

## 🧪 Lab Steps

### Step 0: Incident Containment
- Pause all CI/CD pipelines
- Notify team: **No Terraform applies**
- Confirm state file deletion in Azure Storage

---

### Step 1: Confirm State Deletion
1. Open Azure Portal
2. Navigate to **Storage Account → Containers**
3. Locate the Terraform backend container
4. Verify the `.tfstate` file is missing or deleted

Document:
- Storage account name
- Container name
- State file name

---

### Step 2: Recover Using Blob Versioning (Best Case)
If Blob Versioning is enabled:

1. Open the blob container
2. Enable **Show versions**
3. Identify the last known good version
4. Restore that version

✔️ Fastest recovery  
✔️ Zero downtime

---

### Step 3: Recover Using Soft Delete
If the blob was deleted:

1. Enable **Show deleted blobs**
2. Locate the deleted `.tfstate`
3. Click **Restore**

⚠️ Only possible within the retention period

---

### Step 4: Reinitialize Terraform Backend
Reconnect Terraform to the restored state:

```bash
terraform init -reconfigure
This does not change infrastructure.

Step 5: Validate State Integrity

Run a read-only plan:

terraform plan


Expected result:

✅ No changes (or known, expected drift)

If Terraform proposes recreating resources:

❌ Stop immediately

Investigate state integrity

### Step 6: Harden the Backend (Prevent Recurrence)

After recovering the Terraform state, harden the backend to ensure
**accidental deletion cannot happen again**.

| Protection Area | Configuration | Why It Matters (Interview Angle) |
|-----------------|--------------|----------------------------------|
| **Blob Versioning** | Enable **Blob versioning** on the storage account | Allows rollback to previous state versions if overwritten or corrupted |
| **Blob Soft Delete** | Enable **Soft delete for blobs** (7–30 days retention) | Recovers deleted state caused by human error |
| **RBAC (Least Privilege)** | Humans: `Reader`<br>CI/CD: `Storage Blob Data Contributor` | Prevents unauthorized state modification or deletion |
| **Resource Locks** | Apply **CanNotDelete** lock on storage account or RG | Blocks accidental deletion of the Terraform backend |
| **CI/CD-Only Writes** | Terraform `apply` runs only from pipelines | Ensures auditability and controlled state changes |

> ✅ This combination ensures **recoverability, auditability, and production safety**.
