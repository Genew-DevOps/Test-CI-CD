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
  subscription_id = "d29b376c-e70a-47c3-a31f-f7852dc6029d"
}

resource "azurerm_resource_group" "example" {
  name     = "grande-rg"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "grandeaccount"
  resource_group_name      = "grande-rg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}