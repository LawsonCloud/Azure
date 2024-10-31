variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "southcentralus"
}

variable "resource_type" {
  description = "The type of resource"
  type        = string
  default = "vnet"
}

variable "vnet_name" {
  description = "The name of the vnet"
  type        = string
  default     = "value" 
}

variable "nw_rg" {
  description = "Name of the resource group where the VNet will be created"
  type        = string
  default     = "rg-nw"
}
variable "vm_rg" {
  description = "Name of the resource group where the VNet will be created"
  type        = string
  default     = "rg-vm"
}
variable "tags" {
  type        = map(string)
}

variable "subnets" {
  description = "List of subnets with names and address prefixes"
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = [
    { name = "sn-1", address_prefix = "10.0.0.0/26" },
  ]
}

variable "subnet_name" {
  description = "Name of the subnet for the VM"
  type        = string
  default     = "sn-1"  # Must match one of the names defined in "subnets"
}


