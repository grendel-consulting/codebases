resource "github_repository" "this" {
  name             = var.name
  visibility       = "public"
  has_issues       = true
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