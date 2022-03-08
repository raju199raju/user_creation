// Create AAD Group

data "azuread_client_config" "current" {}

resource "azuread_group" "ad_group" {
  display_name     = var.GROUP_NAME
  description      = var.GROUP_DESCRIPTION
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}

data "azurerm_subscription" "primary" {
}

resource "azurerm_role_assignment" "example" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = azuread_group.ad_group.object_id
}
