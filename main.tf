provider "google" {
  project = var.project_id
  region  = var.default_region
  zone    = var.zone1
  credentials = file("pratik.json")
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

# Get the identity Terraform is using
data "google_client_openid_userinfo" "me" {}

output "terraform_identity" {
  value = data.google_client_openid_userinfo.me.email
}
