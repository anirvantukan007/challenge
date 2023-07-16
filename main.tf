#This will deploy resource group in Azure portal
resource "azurerm_resource_group" "main" {
  name     = "rg-az-test-pub"
  location = "West US"

  tags = {
    environment = "test"
  }
}

resource "azurerm_storage_account" "main" {
  name                     = "stazpubdev"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "main" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}