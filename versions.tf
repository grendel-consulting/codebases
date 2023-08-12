provider "github" {
  owner = "grendel-consulting"
  token = var.token
}

terraform {
  required_version = "1.5.5"

  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "codebases"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
  }
}
