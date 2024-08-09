# Repository Description

This repository is a CI/CD pipeline designed to automate the deployment of infrastructure as code using Terraform. The workflow includes the following key features:


* Infrastructure Management: Uses Terraform to define and provision cloud resources.
* Cost Estimation: Integrates Infracost to provide cost estimates for Terraform plans.
* Updates Documentation: Automatically generates and updates Terraform documentation within the repository.
* Continuous Deployment: Automatically applies infrastructure changes upon successful plan verification, ensuring that the latest configurations are consistently deployed.


This repository serves as a template for managing Azure resources, estimating costs, and maintaining up-to-date documentation.
# How It Works

When a change in .tf is detected on push to main, the work flow runs.

# Upcoming features

* Add infracost estimated cost to readme
* Use inputs to provision infrastructure
* Pull request action
* Test, Stage, and Production Environments
* Configuration Testing/Validation workflow
* Version tagging
* Intergrate teams notifications (potentially)
* Automatic diagrams

## - - - - - - Below updates dynamically with configuration changes - - - - - -

<!-- BEGIN_TF_DOCS -->
# Terraform Configuration
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.99.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.99.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.99.0/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.99.0/docs/resources/network_interface) | resource |
| [azurerm_network_security_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.99.0/docs/resources/network_security_group) | resource |
| [azurerm_resource_group.my_rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.99.0/docs/resources/resource_group) | resource |
| [azurerm_virtual_network.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.99.0/docs/resources/virtual_network) | resource |
| [azurerm_subnet.my_snet](https://registry.terraform.io/providers/hashicorp/azurerm/3.99.0/docs/data-sources/subnet) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
<!-- BEGIN_INFRA_DOCS -->
<!-- END_INFRA_DOCLS -->