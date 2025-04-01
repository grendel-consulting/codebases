provider "github" {
  owner = "grendel-consulting"
  token = var.token
}

terraform {
  required_version = "1.11.3"

  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "codebases"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }
}
