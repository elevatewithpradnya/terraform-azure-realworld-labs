# 🚀 Terraform Azure Real-World Labs

<p align="center">
  <img src="https://img.shields.io/badge/Interview--Ready-✔️-success?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Brownfield--First-Real--World-orange?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Made%20By-elevatewithpradnya-blue?style=for-the-badge" />
</p>

Hands-on **Terraform + Azure** labs built around real production scenarios — brownfield adoption, network design, CI/CD, and container-based deployments. Each folder is a self-contained lab with its own `readme.md` and Terraform code you can run end to end.

✅ What actually breaks (and saves) production — not just "hello world" demos.

---

## 🎯 Who This Repo Is For

- Cloud / DevOps engineers preparing for **Terraform & Azure interviews**
- Engineers working with **existing (brownfield) Azure infrastructure**
- Anyone who wants to understand **WHY**, not just **HOW**

---

## 📂 Labs in This Repo

| Lab | Folder | What It Covers |
|---|---|---|
| 🌐 **Hub-and-Spoke Network** | [`azure-hub-and-spoke`](./azure-hub-and-spoke) | Enterprise network topology in Azure — a Hub VNet plus a peered Spoke VNet with a VM, built as reusable modules |
| 🧩 **Brownfield Infra Import** | [`brownfield-azure-infra`](./brownfield-azure-infra) | Bringing existing, manually-created Azure resources (RG, VNet, Subnets, Key Vault, VM) under Terraform management using `generate-config-out` and modules |
| 🔁 **Terraform CI/CD** | [`terraform-ci-cd`](./terraform-ci-cd) | Automating Terraform runs through a pipeline — non-interactive plan/apply, approval gates *(in progress)* |
| 📥 **Terraform Import Lab** | [`terraform-import-lab`](./terraform-import-lab) | Two focused mini-labs: `01` classic `terraform import` (CLI), `02` declarative **Import Blocks** — the Git/CI-CD-safe way to adopt existing resources |
| 🚀 **Zero-Downtime Web App Deployment** | [`zero-downtime-progress-deployment-webapp`](./zero-downtime-progress-deployment-webapp) | Deploying a containerized app to Azure Web App, backed by ACR, a VNet, and an App Service Plan, for progressive/zero-downtime rollouts |

> Start with **Terraform Import Lab** and **Brownfield Infra Import** if you're prepping for interview questions on adopting existing Azure environments — then move to **Hub-and-Spoke** and **Zero-Downtime Web App** for architecture-level labs.

---

## 💬 How to Use This Repo

- Open the `readme.md` inside each lab folder before running any code
- Run `terraform plan` before every `terraform apply`
- Focus on **why** a step is done, not just the command
- Update variables (subscription ID, resource names, tfvars, client Id etc.) to match your own Azure environment before applying

---

## ⭐ If You Find This Repo Helpful

- ⭐ **Star** it to save for later
- 👤 **Follow** for more real-world Azure + Terraform labs
- 🔔 **Watch** to get notified as new labs are added

> This repo focuses on what real teams do in production — the part most tutorials skip.

---

- **LinkedIn:** [linkedin.com/in/learnwithpradnya](https://www.linkedin.com/in/elevatewithpradnya)
- **GitHub:** [github.com/learnwithpradnya](https://github.com/elevatewithpradnya)
