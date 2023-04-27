// Create AAD Group

data "azuread_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = "example-resources89"
  location = "West Europe"
}
