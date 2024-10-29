# modules/vnet/main.tf
resource "azurerm_resource_group" "this" {
  name                  = "rg-${var.location}-${var.resource_type}-${var.tags.environment}"
  location              = var.location
}

resource "azurerm_network_security_group" "this" {
  name                  = "nsg-${var.location}-${var.tags.environment}"
  location              = var.location
  resource_group_name   = azurerm_resource_group.this.name
}

resource "azurerm_virtual_network" "this" {
  name                  = "vnet-${var.location}-${var.tags.environment}"
  location              = var.location
  resource_group_name   = azurerm_resource_group.this.name
  address_space         = ["10.0.0.0/16"]

  subnet {
    name                = "sn-1"
    address_prefixes    = ["10.0.0.0/26"]
    security_group      = azurerm_network_security_group.this.id
  }

  subnet {
    name                = "sn-2"
    address_prefixes    = ["10.0.0.64/26"]
    security_group      = azurerm_network_security_group.this.id
  }

  subnet {
    name                = "sn-3"
    address_prefixes    = ["10.0.0.128/26"]
    security_group      = azurerm_network_security_group.this.id
  }

  subnet {
    name                = "sn-4"
    address_prefixes    = ["10.0.0.192/26"]
    security_group      = azurerm_network_security_group.this.id
  }

  tags                  = var.tags
}
