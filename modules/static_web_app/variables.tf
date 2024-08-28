variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region"
  type        = string
}

variable "resource_type" {
  description = "The type of resource"
  type        = string
  default     = "static_web_app"
}