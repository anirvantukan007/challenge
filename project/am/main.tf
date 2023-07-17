data "azurerm_client_config" "main" {}

resource "azurerm_resource_group" "main" {
  name      = "rg-az-test-pub"
  location  = "West US"
  tags      = var.tags
}

resource "azurerm_storage_account" "main" {
  name                     = "stazpubdev"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "main" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}
