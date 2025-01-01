variable "name" {
  default = null
  type    = string
}

variable "resource_group_name" {
  default = null
  type    = string
}

variable "location" {
  default = null
  type    = string
}

variable "tags" {
  default = {}
  type    = map(any)
}

module "storage" {
  source  = "Azure/avm-res-storage-storageaccount/azurerm"
  version = "0.3.0"

  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}