#This will deploy resource group in Azure portal
resource "azurerm_resource_group" "main" {
  name     = "rg-az-test-pub"
  location = "West US"

  tags = var.tags
}