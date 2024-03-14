terraform {
  backend "azurerm" {
    resource_group_name  = "demo-resources-storage"
    storage_account_name = "demoresourcesstorage14"
    container_name       = "prod-tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
