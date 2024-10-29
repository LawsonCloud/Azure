# modules/vnet/outputs.tf
output "vnet_id" {
  description = "ID of the VNet"
  value       = azurerm_virtual_network.this.id
}

output "vnet_address_space" {
  description = "Address space of the VNet"
  value       = azurerm_virtual_network.this.address_space
}
