# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate2315"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc = true
  }
  required_version = ">= 1.5.6"
}

provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
  use_oidc = true
}
