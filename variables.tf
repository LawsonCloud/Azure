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

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "value" 
}

variable "tags" {
  type        = map(string)
}
