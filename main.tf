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
  subscription_id = "325754cd-a12c-48d9-921b-eb17c173bd01"
}

resource "azurerm_resource_group" "example" {
  name     = "grande-rg"
  location = "westus2"
}

resource "azurerm_storage_account" "example" {
  name                     = "grandeaccount"
  resource_group_name      = "grande-rg"
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}