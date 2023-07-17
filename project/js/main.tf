#This will deploy resource group in Azure portal
# Retrieve the JSON representation of the Azure virtual machine
data "external" "vm_json" {
  program = ["sh", "-c", "terraform show -json | jq '.values.root_module.resources[] | select(.type == \"azurerm_virtual_machine\" and .name == \"vmwindev\")'"]
}

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
  source_content         = data.external.vm_json.result
}