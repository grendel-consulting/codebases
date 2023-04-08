variable "token" {
  type        = string
  description = "Authentication credentials for the GitHub provider"
  sensitive   = true
}

locals {
  repositories = toset([
    ".github",
    "codebases",
    "cloud-control-tower",
    "cloud-factory",
    "cloud-factory-baseline",
    "cloud-factory-customisations",
    "cloud-factory-provisioning",
    "cloud-factory-requests",
    "gatsby-baseline",
    "remix-baseline"
  ])
}