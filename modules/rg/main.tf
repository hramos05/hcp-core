variable "name" {
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

module "rg" {
  source  = "Azure/avm-res-resources-resourcegroup/azurerm"
  version = "0.1.0"

  name     = var.name
  location = var.location
  tags     = var.tags
}

output "all" {
  value = module.rg
}