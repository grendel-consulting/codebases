terraform {
  required_version = "1.5.6"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.34.0"
    }
  }
}
