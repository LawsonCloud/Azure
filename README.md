# Azure Terraform Repository

This repository is designed to manage and provision Azure infrastructure using Terraform. The infrastructure is organized into reusable and composable **modules** to promote best practices, scalability, and maintainability.

## Repository Structure

- **modules/**: Contains reusable Terraform modules that define specific resources or sets of resources. Each module is self-contained and can be used across different environments or projects.
- **environments/**: Defines different environments (e.g., `dev`, `staging`, `prod`) where the infrastructure will be deployed. Each environment references the modules and provides specific configuration values.
  > **Note:** If you are setting up a new environment, ensure that you add a corresponding directory under `environments/` and provide the necessary Terraform configuration files (e.g., `main.tf`, `variables.tf`, `outputs.tf`). This structure helps in managing different environments with ease.
- **main.tf**: The entry point for Terraform configuration, where the overall infrastructure is defined using the modules.
- **variables.tf**: Defines the input variables required for the Terraform configuration.
- **outputs.tf**: Specifies the outputs that are exposed after the infrastructure is provisioned.
- **terraform.tfvars**: Contains the values for the variables, which can be different for each environment.

## How to Use

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd <repository-name>
