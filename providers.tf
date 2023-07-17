#This is to include terraform required providers

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }



provider "azurerm" {
  features {}
}
