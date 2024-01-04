terraform {
  required_version = "1.6.6"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.43.0"
    }
  }
}
