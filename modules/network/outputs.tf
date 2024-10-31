# modules/vnet/outputs.tf
output "vnet_id" {
  description = "ID of the VNet"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "ID of the VNet"
  value       = azurerm_virtual_network.this.name
}
output "vnet_address_space" {
  description = "Address space of the VNet"
  value       = azurerm_virtual_network.this.address_space
}

output "subnet_ids" {
  value = { for index, subnet in azurerm_subnet.subnets : var.subnets[index].name => subnet.id }
}

output "subnet_names" {
  value = [for subnet in azurerm_subnet.subnets : subnet.name]
}


