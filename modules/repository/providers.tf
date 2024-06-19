terraform {
  required_version = "1.8.5"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.2"
    }
  }
}
