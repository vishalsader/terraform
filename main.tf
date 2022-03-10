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
resource "azurerm_app_service_plan" "dev_plan_appservice" {
  name                = "dev_plan_appservice"
  location            = azurerm_resource_group.rg_vishal_dev.location
  resource_group_name = azurerm_resource_group.rg_vishal_dev.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
resource "azurerm_app_service_plan" "qa_plan_appservice" {
  name                = "qa_plan_appservice"
  location            = azurerm_resource_group.rg_aquib_qa.location
  resource_group_name = azurerm_resource_group.rg_aquib_qa.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
