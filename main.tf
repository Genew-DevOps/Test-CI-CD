terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "8620618b-e18e-453b-abb0-ee127f4295c8"
}

resource "azurerm_resource_group" "example" {
  name     = "grande-rg"
  location = "westus2"
}

resource "azurerm_storage_account" "example2" {
  name                     = "grandeaccount"
  resource_group_name      = "grande-rg"
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on = [ azurerm_resource_group.example ] 
}