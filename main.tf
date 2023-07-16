#This will deploy resource group in Azure portal
resource "azurerm_resource_group" "main" {
  name     = "rg-az-test-pub"
  location = "West US"

  tags = {
    environment = "test"
  }
}

module "storage" {
  source = "./module/storage"
}