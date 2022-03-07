provider "azurerm" {
     features {}
     subscription_id = "060c7910-de04-45a3-9953-ad495ae2be2b"
     client_id       = "1773045f-c8a6-49d9-841f-40e6b225aecd"
     client_secret   = "QIQ7Q~Ph7OuxM7EsynP1.wmbUu2XhSGIEnRPB"
     tenant_id       = "1ceb3aa7-356f-4e03-b604-c324db3e3db8"
     version         = "~>2.0"
}

provider "azuread" {
     client_id       = "1773045f-c8a6-49d9-841f-40e6b225aecd"
     client_secret   = "QIQ7Q~Ph7OuxM7EsynP1.wmbUu2XhSGIEnRPB"
     tenant_id       = "1ceb3aa7-356f-4e03-b604-c324db3e3db8"
}