resource "azurerm_resource_group" "this" {
  name                  = "${var.vm_rg}-${var.location}-${var.tags.environment}"
  location              = var.location
  tags                  = var.tags
}

resource "azurerm_network_interface" "this" {
  name                = "nic-${var.location}-${var.tags.environment}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "this" {
  name                = "vm-${var.location}-${var.tags.environment}"
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location
  size                = "Standard_B1ls"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.this.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}