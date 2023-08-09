terraform {
  required_version = "1.5.5"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
}
