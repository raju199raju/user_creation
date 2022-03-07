provider "azurerm" {
     features {}
     subscription_id = "729c6f47-0b24-4106-8552-e8373b7fe5fc"
     client_id = "62489962-f130-479a-a288-4c85d20617f2"
     client_secret = "ikq7Q~ppQBB44IT0ZZs0fLjUKLFQ1U1AAf.qE"
     tenant_id = "c4eaa32e-5d01-4773-8371-8037d3b710ab"
     version = "~>2.0"
}

provider "azuread" {
  client_id = "62489962-f130-479a-a288-4c85d20617f2"
  client_secret = "ikq7Q~ppQBB44IT0ZZs0fLjUKLFQ1U1AAf.qE"
  tenant_id = "c4eaa32e-5d01-4773-8371-8037d3b710ab"
}