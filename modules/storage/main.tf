variable "storage" {
  default = {}
  type    = map(any)
}

module "storage" {
  for_each = var.storage
  source   = "Azure/avm-res-storage-storageaccount/azurerm"
  version  = "0.2.8"

  name                = each.key
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  tags                = each.value.tags
}

output "storage" {
  value = module.storage
}