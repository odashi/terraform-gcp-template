resource "google_cloudbuild_trigger" "terraform" {
  for_each = toset(["plan", "apply"])

  project     = var.project_name
  name        = "terraform-${each.key}"
  description = "terraform ${each.key}"
  github {
    owner = var.github_owner
    name  = var.github_repository
    dynamic "pull_request" {
      for_each = each.key == "plan" ? [0] : []
      content {
        branch = var.main_branch
      }
    }
    dynamic "push" {
      for_each = each.key == "apply" ? [0] : []
      content {
        branch = var.main_branch
      }
    }
  }
  service_account = google_service_account.terraform.id
  filename        = "cloudbuild/terraform.${each.key}.yaml"
}
