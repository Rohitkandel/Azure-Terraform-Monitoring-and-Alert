resource "azurerm_resource_group" "IT" {
  name     = "ITstorage"    # name of the resource group
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "rig0456unique"    # name of the resource 
  resource_group_name      = azurerm_resource_group.IT.name
  location                 = azurerm_resource_group.IT.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
