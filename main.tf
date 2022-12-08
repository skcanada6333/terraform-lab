terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.34.0"
    }
  }
}
provider "azurerm" {
features {}
}
# cfreate resource group
resource "azurerm_resource_group" "rsgit" {
    name = "rsgit"
    location = "North-europe"
  
}
# create virtual network in resource group
resource "azurerm_virtual_network" "myvngit" {
  name ="vngit"
  location = "North-europe"
  resource_group_name = "rsgit"
  address_space = [ "10.0.0.0/16" ]
}

