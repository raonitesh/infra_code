terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "ash-rg"
    storage_account_name  = "Niteshstg11"
    container_name        = "nitsco"
    key                   = "nniterraform.tfstate"

  }
}

provider "azurerm" {
    features {}
    subscription_id = "6f8da1c9-b993-4f71-b180-2c6245a0833d"
}