##Get blue group UMIGs names
data "terraform_remote_state" "backend_env" {
  backend = "gcs"
  config = {
    bucket = "devops-lab-bucket"
    prefix = "tfstate/${var.app_env}"
    credentials = file(var.gcp_auth_file)
  }
}

terraform {
  required_version = ">= 0.15"
  # backend "gcs" {
  #   bucket      = "devops-lab-bucket"
  #   prefix      = "tfstate/${var.app_env}"
  #   credentials = file(var.gcp_auth_file)
  # }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.10.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      # version = "3.10.0"
    }
  }
}

provider "google" {
  credentials   = file(var.gcp_auth_file)
  project       = var.project_id
  region        = var.gcp_region_1
  zone          = var.gcp_zone_1
}

provider "google-beta" {
  credentials   = file(var.gcp_auth_file)
  project       = var.project_id
  region        = var.gcp_region_1
  zone          = var.gcp_zone_1
}

# Setup default vault provider
# provider "vault" {
#   token   = var.vault_token
#   address = "https://vault-prd.solutions.corelogic.com:8200"
# }