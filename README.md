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

- 🔹 Adopting **existing Azure resources** using:
  - `terraform import`
  - Terraform `import` blocks (v1.5+)
  - `aztfexport`
- 🔹 Aligning Terraform **state with reality**
- 🔹 Detecting and managing **configuration drift**
- 🔹 Designing **modular and reusable Terraform architectures**
- 🔹 Managing **multiple environments** (dev / stage / prod)
- 🔹 Applying **production-safe change strategies**
- 🔹 Using **remote state** with Azure Storage
- 🔹 Integrating Terraform with **CI/CD pipelines**
- 🔹 Azure best practices for:
  - Networking
  - Identity & Access Management
  - Security & Governance
  - Resource lifecycle control

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
- Azure DevOps / GitHub Actions
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

## 🔗 Related Content

This repository is actively referenced in:
- LinkedIn technical posts
- Terraform Import demonstrations
- Brownfield migration discussions
- Interview scenario walkthroughs

👉 Follow **Pradnya Deshpande** for Cloud & DevOps engineering insights.

---

## ⭐ Final Thought

Terraform becomes powerful **not when you create resources**,  
but when you can **adopt, control, and evolve infrastructure without breaking it**.

If this repository helps you think more like a production engineer — it’s doing its job.
