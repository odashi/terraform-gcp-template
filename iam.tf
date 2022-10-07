resource "google_service_account" "terraform" {
  account_id   = "terraform"
  display_name = "Terraform service account"
  lifecycle {
    prevent_destroy = true
  }
}

resource "google_project_iam_member" "owner_terraform" {
  project = var.project_name
  role    = "roles/owner"
  member  = "serviceAccount:${google_service_account.terraform.email}"
}
