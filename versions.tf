provider "github" {
  owner = "grendel-consulting"
  token = var.token
}

terraform {
  required_version = "1.4.4"
  
  cloud {
    organization = "grendel-consulting"
    workspaces {
      name = "codebases"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.22.0"
    }
  }
}