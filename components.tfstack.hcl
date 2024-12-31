component "rg" {
  source = "./modules/rg"

  inputs = {
    rgs = {
      "rg-demo-eastus2-001" = {
        location = "eastus2"
        tags     = {}
      }
    }
  }

  providers = {
    azurerm = provider.azurerm.this
  }

}