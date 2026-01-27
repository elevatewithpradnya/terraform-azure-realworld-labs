# terraform-azure-realworld-labs

![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Microsoft%20Azure-Cloud-0078D4?logo=microsoftazure&logoColor=white)
![Infrastructure as Code](https://img.shields.io/badge/Infrastructure%20as%20Code-IaC-success)
![Production Ready](https://img.shields.io/badge/Production-Ready-brightgreen)
![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D1.5-blue)
![Status](https://img.shields.io/badge/Status-Active%20Development-orange)

<p align="center">
  <img src="assets/terraform-azure-architecture.png" alt="Terraform Azure Architecture" width="85%">
</p>

---

## 📌 Overview

**terraform-azure-realworld-labs** is a curated collection of **real-world, production-oriented Terraform hands-on labs for Microsoft Azure**.

This repository is built around **how Terraform is actually used in live environments** — adopting existing infrastructure, managing state safely, and evolving Azure platforms without downtime.

> This is **engineering**, not demos.

---

## 🚀 What This Repository Covers

| Topic | Description | LinkedIn Post |
|------|-------------|---------------|
| Terraform Remote State & Locking | Configuring and managing remote state using Azure Storage with state locking to prevent concurrent changes | _Coming soon_ |
| Terraform Provider Versioning | Controlling provider versions to ensure stability, reproducibility, and safe upgrades | _Coming soon_ |
| Terraform in CI/CD | Automating Terraform workflows using Azure DevOps and GitHub Actions with plan/apply separation | _Coming soon_ |
| Multi-Environment Design | Designing Terraform code for dev / stage / prod using workspaces and variable strategies | _Coming soon_ |
| Drift Detection & Governance | Identifying configuration drift and enforcing governance without impacting production | _Coming soon_ |
| Terraform Import | Safely importing existing Azure resources into Terraform state without recreation | _Add link_ |
| aztfexport | Reverse-engineering existing Azure infrastructure into Terraform code | _Add link_ |
| tfsec (IaC Security) | Static security analysis of Terraform code to catch misconfigurations early | _Coming soon_ |
| Azure Identity & RBAC | Managing Azure AD / Entra ID identities, RBAC roles, and least-privilege access | _Coming soon_ |
| Azure Landing Zones | Structuring Azure environments using landing zone principles and enterprise-scale patterns | _Coming soon_ |

---

## 🧠 Why This Repo Exists

Recreating infrastructure is easy.  
**Adopting existing infrastructure safely is a real cloud engineering skill.**

In real production systems:
- Infrastructure already exists
- Downtime is not acceptable
- State accuracy matters
- Terraform plans must be trusted

This repository focuses on **decision-making, safety, and correctness** — not just syntax.

---

## 📂 Repository Structure


Each lab includes:
- Scenario description
- Architecture context
- Terraform configuration
- Validation steps
- Production notes and common pitfalls

---

## 🛠️ Tech Stack

- Terraform (>= 1.5)
- Microsoft Azure
- Azure CLI
- GitHub Actions
- Azure Storage (Remote State)
- Terraform Modules & Workspaces

---

## 🎯 Who This Repository Is For

✔ Azure Infrastructure Engineers  
✔ Cloud & DevOps Engineers  
✔ Professionals preparing for **real-world interviews**  
✔ Teams migrating from **manual Azure setups to IaC**  

---

## 🚫 Who This Repository Is NOT For

✖ Absolute beginners looking for basic Terraform syntax  
✖ Demo-only or click-through tutorials  
✖ Infrastructure experimentation without production context  

---

## ▶️ How to Use This Repository

1. Clone the repository  
2. Choose a lab relevant to your use case  
3. Read the scenario before touching the code  
4. Review the Terraform plan carefully  
5. Apply only after understanding the impact  

> Treat every lab as if it were production.

---

👉 Follow **Pradnya Deshpande** for Cloud & DevOps engineering insights.

---
