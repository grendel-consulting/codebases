resource "github_repository" "this" {
  name         = var.name
  description  = var.tagline
  topics       = var.topics
  visibility   = var.visibility #trivy:ignore:AVD-GIT-0001
  homepage_url = var.homepage
  archived     = var.archived

  allow_update_branch    = true
  delete_branch_on_merge = true
  has_discussions        = var.discussions
  has_issues             = true
  vulnerability_alerts   = true

  dynamic "security_and_analysis" {
    for_each = var.visibility == "public" ? [{}] : []

    content {
      secret_scanning {
        status = "enabled"
      }

      secret_scanning_push_protection {
        status = "enabled"
      }
    }
  }

  dynamic "pages" {
    for_each = var.pages == true ? [{}] : []
    content {
      build_type = "legacy"

      source {
        branch = "gh-pages"
      }
    }
  }

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

resource "github_branch" "pages" {
  for_each   = var.pages == true ? { "gh-pages" = "v" } : {}
  repository = github_repository.this.name
  branch     = each.key
}
