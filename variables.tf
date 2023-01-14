variable "token" {
  type        = string
  description = "Authentication credentials for the GitHub provider"
  sensitive   = true
}

locals {
  repositories = toset([
    "codebases"
  ])
}