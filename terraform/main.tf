terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=3.4.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "platform_rg" {
    name = var.resource_group_name
    location = var.location
}
