variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "southcentralus"
}

variable "resource_type" {
  description = "The type of resource"
  type        = string
  default     = "static_web_app"
}
