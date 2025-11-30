# Terraform configuration for KYPO Red Team vs Blue Team Training

terraform {
  required_providers {
    kypo = {
      source = "muni-kypo-csc/kypo"
    }
  }
}

provider "kypo" {
  # Configuration will be provided by KYPO Portal
}
