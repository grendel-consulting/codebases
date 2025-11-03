provider "github" {
  owner = "grendel-consulting"
  token = var.token
}

terraform {
  required_version = "1.13.4"

  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "codebases"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.7.4"
    }
  }
}
