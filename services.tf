# These services are at least necessary to set up this template.
locals {
  services = [
    "cloudbuild.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
  ]
}

resource "google_project_service" "common" {
  for_each = toset(local.services)
  service  = each.key
  lifecycle {
    prevent_destroy = true
  }
}