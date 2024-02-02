terraform {
  required_version = "1.7.2"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.45.0"
    }
  }
}
