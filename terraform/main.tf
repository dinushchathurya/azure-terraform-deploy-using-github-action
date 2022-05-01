terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformDemo"
    storage_account_name = "terraformcodeops"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}

module "RG" {
  source   = "./modules/RG" #A
  resource_group_name   = var.resource_group_name     #B
  location = var.location
}

module "SA" {
  source   = "./modules/StorageAccount"
  storage_name    = var.storage_name
  resource_group_name   = var.resource_group_name
  location = var.location
}