provider "github" {
  owner = "grendel-consulting"
  token = var.token
}

terraform {
  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "codebases"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.18.0"
    }
  }
}