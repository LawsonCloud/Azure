# modules/vnet/variables.tf
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "location" {
  description = "Azure region for the VNet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the VNet will be created"
  type        = string
}

variable "tags" {
  description = "Tags to associate with the VNet"
  type        = map(string)
  default     = {}
}

variable "resource_type" {
  description = "The type of resource"
  type        = string
  default     = "vnet"
}