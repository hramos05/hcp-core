identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "dev-eastus2" {
  inputs = {
    identity_token = identity_token.azurerm.jwt
  }
}