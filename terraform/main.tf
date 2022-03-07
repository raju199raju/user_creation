// create AAD user 

resource "azuread_user" "example" {
  user_principal_name = var.upn
  display_name        = "test"
  mail_nickname       = "jdoe"
  password            = "SecretP@sswd99!"
}

// Create AAD Group

data "azuread_client_config" "current" {}

resource "azuread_group" "example" {
  display_name     = "example"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
}

// Add user to AAD Group

resource "azuread_group_member" "example" {
  group_object_id  = azuread_group.example.id
  member_object_id = azuread_user.example.id
}
