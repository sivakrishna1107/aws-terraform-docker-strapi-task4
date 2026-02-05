# Terraform AWS Strapi Infrastructure (Baseline)

This repository contains the **baseline setup** for deploying a Strapi application on AWS using **Terraform**.

The `main` branch represents the **initial project structure and environment setup**.  
The **complete infrastructure implementation** (VPC, private EC2, NAT Gateway, Load Balancer, Dockerized Strapi, etc.) is available in the **`task` branch**.

---

##Purpose of This Repository

The goal of this project is to demonstrate:

- Infrastructure as Code (IaC) using Terraform
- Secure AWS networking design
- Environment-based configuration using `tfvars`
- Automated application deployment using `user_data`
- Professional Git workflow using feature branches

---

##Branch Strategy

- **`main`**
  - Clean baseline
  - Project structure
  - Terraform configuration skeleton
  - No environment-specific or task-specific logic

- **`task`**
  - Full implementation of the assignment:
    - VPC with public and private subnets
    - NAT Gateway for outbound internet access
    - Private EC2 instance
    - Security Groups
    - Application Load Balancer
    - Dockerized Strapi deployment
    - Environment separation using `tfvars`

 **Please switch to the `task` branch to review the complete solution.**



