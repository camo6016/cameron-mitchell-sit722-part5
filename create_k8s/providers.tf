# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  backend "azurerm" {
    resource_group_name  = "ninetwodistinction"
    storage_account_name = "ninetwodistinction"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {}
