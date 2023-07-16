#This will deploy resource group in Azure portal
resource "azurerm_resource_group" "main" {
  name     = "rg-az-test-pub"
  location = var.location

  tags = {
    environment = "test"
  }
}