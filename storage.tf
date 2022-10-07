# Terraform states
resource "google_storage_bucket" "terraform" {
  name                        = "${var.project_name}-terraform"
  location                    = var.storage_region
  uniform_bucket_level_access = true

  lifecycle {
    prevent_destroy = true
  }
}
