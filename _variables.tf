variable "project_name" {
  type    = string
  default = "%PROJECT_NAME%"
}

# Available values:
# https://cloud.google.com/compute/docs/regions-zones
variable "region" {
  type    = string
  default = "%REGION%"
}

# Available values:
# https://cloud.google.com/storage/docs/locations
variable "storage_region" {
  type = string
  default = "%STORAGE_REGION%"
}

variable "github_owner" {
  type    = string
  default = "%GITHUB_OWNER%"
}

variable "github_repository" {
  type    = string
  default = "%GITHUB_REPOSITORY%"
}

variable "main_branch" {
  type    = string
  default = "^main$"
}
