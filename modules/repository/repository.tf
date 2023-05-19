resource "github_repository" "this" {
  name         = var.name
  description  = var.tagline
  topics       = var.topics
  visibility   = var.visibility #tfsec:ignore:github-repositories-private
  homepage_url = var.homepage

  delete_branch_on_merge = true
  has_issues             = true
  vulnerability_alerts   = true

  security_and_analysis {
    secret_scanning {
      status = var.visibility == "public" ? "enabled" : "disabled"
    }

    secret_scanning_push_protection {
      status = var.visibility == "public" ? "enabled" : "disabled"
    }
  }

  dynamic "pages" {
    for_each = var.pages == true ? [{}] : []
    content {
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
