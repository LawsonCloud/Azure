variable "tags" {
  description = "Tags to associate with the VNet"
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "Azure region for the VNet"
  type        = string
}