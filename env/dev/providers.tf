terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

#   subscription_id = "ea4756b6-8b19-4ee8-9491-0ee7f49c536d"
#   client_id       = "6ea2054a-43be-4324-bcdc-30c457fec84f"
#   client_secret   = var.client_secret
#   tenant_id       = "213e6d57-b40c-4684-8287-8453b6d2f698"