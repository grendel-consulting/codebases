resource "github_repository" "this" {
  name        = var.name
  description = var.tagline
  topics      = var.topics
  visibility  = var.visibility #tfsec:ignore:github-repositories-private

  delete_branch_on_merge = true
  has_issues             = true
  vulnerability_alerts   = true

  license_template = "mit"
  auto_init        = false
}

resource "github_branch" "main" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "default" {
  repository = github_repository.this.name
  branch     = github_branch.main.branch
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.this.name
  pattern       = github_branch.main.branch

  required_status_checks {
    strict = true
  }

  require_signed_commits = true
}
