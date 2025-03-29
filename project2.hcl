provider "azurerm" {
  features {}

  subscription_id = "0dfec23d-c98f-4754-80fe-3493c0697bc8"
  
}

resource "azurerm_resource_group" "rg" {
  name     = "Pushparaj-TechnoHack-RG"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "satechnack"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
