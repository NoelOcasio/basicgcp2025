# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = ""
    prefix = "terraform/state"
    credentials = "yourcreds.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

