terraform {
  required_version = "1.4.6"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.24.0"
    }
  }
}
