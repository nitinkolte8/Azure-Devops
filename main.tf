# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "f13cb0f7-59c3-45cf-bf39-96054ba254e3"
  client_id = "6dd711c1-9e38-46c4-b753-1b0d1bd21647"
  client_secret = "ArZ8Q~jDhau96Zsbh~UUH90OKq9-T0C40Q~6AbsS"
  tenant_id = "537bbe75-b5bc-4bf7-87ae-0ddf14fca675"
  features {}
}

resource "azurerm_resource_group" "nitin-rg" {
  name     = "nitin-resources"
  location = "East Us"
  tags = {
    environment = "dev"
  }
}
