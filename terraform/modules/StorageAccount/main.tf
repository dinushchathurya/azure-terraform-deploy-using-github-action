resource "azurerm_storage_account" "STA" {
    name                     = var.storage_name
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = "Standard"
    account_replication_type = "GRS"

tags = {
        environment = "dev"
    }
}