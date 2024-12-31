component "rg" {
  source = "./modules/rg"

  inputs = {
    name     = "rg-demo-eastus2-001"
    location = eastus2
    tags     = {}
  }

  providers = {
    azurerm = provider.azurerm.this
    random  = provider.random.this
    modtm   = provider.modtm.this
  }
}

component "storage" {
  source = "./modules/storage"

  inputs = {
    storage = {
      "stdemoeastus2001" = {
        location            = "eastus2"
        resource_group_name = component.rg.all.name
      }
    }
  }

  providers = {
    azurerm = provider.azurerm.this
    azapi   = provider.azapi.this
    random  = provider.random.this
    modtm   = provider.modtm.this
  }
}