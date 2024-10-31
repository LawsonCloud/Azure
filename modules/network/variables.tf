# modules/vnet/variables.tf
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "location" {
  description = "Azure region for the VNet"
  type        = string
}

variable "nw_rg" {
  description = "Name of the resource group where the VNet will be created"
  type        = string
  default     = "rg-nw"
}

variable "tags" {
  description = "Tags to associate with the VNet"
  type        = map(string)
  default     = {}
}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
}


