terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "~> 2.28"
    }
  }
  required_version = ">= 0.13"
}
