// Create AAD Group

data "azuread_client_config" "current" {}

resource "azuread_group" "ad_group" {
  display_name     = var.GROUP_NAME
  description      = var.GROUP_DESCRIPTION
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}
