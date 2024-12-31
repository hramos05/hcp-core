required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "4.14.0"
  }
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }
  modtm = {
    source  = "Azure/modtm"
    version = "0.3.2"
  }
  azapi = {
    source  = "Azure/azapi"
    version = "2.2.0"
  }
}

provider "azurerm" "this" {
  config {
    features {}
    storage_use_azuread = true
    use_cli             = false
    use_oidc            = true
    oidc_token          = var.identity_token
    client_id           = "10909f42-a8aa-4b37-a636-1d72398851ef"
    tenant_id           = "b6486f33-eabb-4496-8803-28d399e55e21"
    subscription_id     = "93a8efc3-6f8c-4269-837a-871917e91ff0"
  }
}

provider "azapi" "this" {
  config {
    use_cli             = false
    use_oidc            = true
    oidc_token          = var.identity_token
    client_id           = "10909f42-a8aa-4b37-a636-1d72398851ef"
    tenant_id           = "b6486f33-eabb-4496-8803-28d399e55e21"
    subscription_id     = "93a8efc3-6f8c-4269-837a-871917e91ff0"
  }
}

provider "random" "this" {}
provider "modtm" "this" {}
