terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg_vishal_dev" {
  name     = "rg_vishal_dev"
  location = "Central India"
}
resource "azurerm_resource_group" "rg_vishal_qa" {
  name     = "rg_vishal_qa"
  location = "Central India"
}
