terraform {
  cloud {
    organization = "devninja"

    workspaces {
      name = "azure-terraform"
    }
  }
}