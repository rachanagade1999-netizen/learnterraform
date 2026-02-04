resource "azurerm_resource_group" "nsrg" {
  name     = var.resource_group_name
  location = var.location
}



// create network security group
resource "azurerm_network_security_group" "nsnsg" {
  name                = "example-security-group"
  location            = azurerm_resource_group.nsrg.location
  resource_group_name = azurerm_resource_group.nsrg.name
}

// create virtual network

resource "azurerm_virtual_network" "nsvnet" {
  name                = "${var.environment}-vnet1"
  location            = azurerm_resource_group.nsrg.location
  resource_group_name = azurerm_resource_group.nsrg.name
  address_space       = ["10.0.0.0/16"]
  // dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "${var.environment}-vnet1-subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "${var.environment}-vnet1-subnet2"
    address_prefixes = ["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.nsnsg.id
  }

  tags = {
    environment = var.environment
  }
}