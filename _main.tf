terraform {
  # Uncomment this block after the first apply is succeeded.
  # See also README.md.
  # backend "gcs" {
  #   bucket = "%PROJECT_NAME%-terraform"
  # }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.21.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.21.0"
    }
  }
}

provider "google" {
  project         = var.project_name
  region          = var.region
  request_timeout = "60s"
}

provider "google-beta" {
  project         = var.project_name
  region          = var.region
  request_timeout = "60s"
}
