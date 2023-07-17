# Retrieve the JSON representation of the Azure resource

resource "azurerm_storage_container" "main" {
  name                  = "json"
  storage_account_name  = "stazpubdev"
  container_access_type = "private"
}

resource "azurerm_storage_blob" "main" {
  name                   = "azure_json"
  storage_account_name   = "stazpubdev"
  storage_container_name = azurerm_storage_container.main.name
  type                   = "Block"
  source_content         = "vm.json"
}