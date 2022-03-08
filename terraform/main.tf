// create AAD user 

resource "azuread_user" "example" {
  user_principal_name = var.UPN
  display_name        = var.FULL_NAME
  given_name          = var.FIRST_NAME
  surname             = var.LAST_NAME
  password            = "SecretP@sswd99!"
}

