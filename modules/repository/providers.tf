terraform {
  required_version = "1.8.1"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.1"
    }
  }
}
