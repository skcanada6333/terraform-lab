terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.34.0"
    }
  }
}
provider "azurerm" {
   subscription_id = "d5cfd521-b891-4b93-a71d-4f7d88dabf46"
    client_id = "c4abd404-ba36-4e77-abc8-3c80d7219aee"
    client_secret = "K7S8Q~I2dF3jvwj86sPr2Qs5o6K3E6sf2Dz4PaGP"
    tenant_id = "d6aeaca1-6481-4fb5-a45a-fd02b4ea93c9"
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

