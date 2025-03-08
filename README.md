**Azure Monitoring & Alert System with Terraform**

This repository contains Terraform configurations to deploy and manage an Azure monitoring and alert system for virtual machines. The system monitors CPU usage and available memory, sending email notifications when thresholds are exceeded.

Overview
This project uses Azure's native monitoring capabilities and Terraform to create:

An Azure Monitor Action Group for email notifications
CPU utilization threshold alerts (triggers when average CPU > 60%)
Disk space threshold alerts (triggers when available memory < 20 bytes)

Prerequisites

Terraform (v0.14+)
Azure Subscription
Azure CLI configured locally
Sufficient permissions to create resources in Azure

Repository Structure
Copy├── main.tf              # Main Terraform configuration
├── variables.tf         # Variable definitions
├── outputs.tf           # Output definitions
├── monitor.tf           # Azure monitoring configuration
├── terraform.tfvars     # Variable values (not checked into git)
└── README.md            # This file
Resources Created
The Terraform configuration creates the following resources:

Azure Resource Group - Container for all resources
Azure Linux Virtual Machine - The VM to be monitored
Azure Monitor Action Group - Defines notification methods (email)
Azure Monitor Metric Alerts - Two alert definitions:

CPU usage alert (triggers at >60% average)
Memory alert (triggers when available memory <20 bytes)


![Azure Monitoring   Alert System README - visual selection](https://github.com/user-attachments/assets/7069bc3a-33bd-4937-8818-1e1080fefa81)
