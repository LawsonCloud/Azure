# modules/vnet/main.tf
resource "azurerm_resource_group" "this" {
  name                  = "${var.nw_rg}-${var.location}-${var.tags.environment}"
  location              = var.location
  tags                  = var.tags
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
  tags                  = var.tags
}

resource "azurerm_subnet" "subnets" {
  count                = length(var.subnets)
  name                 = "sn-${count.index + 1}-${var.location}-${var.tags.environment}"  
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [var.subnets[count.index].address_prefix]
}
