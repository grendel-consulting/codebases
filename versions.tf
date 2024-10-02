provider "github" {
  owner = "grendel-consulting"
  token = var.token
}

terraform {
  required_version = "1.9.7"

  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "codebases"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.3.0"
    }
  }
}
