terraform {
  required_version = ">= 1.8, < 2.0"

  required_providers {
    fabric = {
      source  = "microsoft/fabric"
      version = "~> 1.0"
    }
  }
}

provider "fabric" {
  # tenant_id        = <guid> # ARM_TENANT_ID
  # use_oidc         = true   # ARM_USE_OIDC
  # use_azuread_auth = true   # ARM_USE_AZUREAD
  # client_id        = <guid> # ARM_CLIENT_ID

  preview = false
}
