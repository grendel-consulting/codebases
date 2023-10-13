terraform {
  required_version = "1.6.1"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.40.0"
    }
  }
}
