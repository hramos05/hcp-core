variable "rgs" {
  default = {}
  type    = map(any)
}

module "rg" {
  for_each = var.rgs
  source   = "Azure/avm-res-resources-resourcegroup/azurerm"
  version  = "0.1.0"

  name     = each.key
  location = each.value.location
  tags     = each.value.tags
}

output "rgs" {
  value = module.rg
}