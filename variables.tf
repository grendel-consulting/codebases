variable "token" {
  type        = string
  description = "Authentication credentials for the GitHub provider"
  sensitive   = true
}

locals {
  repositories = {
    ".github" : { "tagline" : "Default community health files for Grendel Consulting" },
    "codebases" : { "tagline" : "Repository management", topics : ["github"] },
    "cloud-control-tower" : { "tagline" : "Decisions and handbook for implementing AWS Control Tower", topics : ["aws", "control-tower"] },
    "cloud-factory" : { "tagline" : "Deploying and managing the Account Factory for Terraform for AWS Control Tower", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-baseline" : { "tagline" : "Global customisations used in the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-customisations" : { "tagline" : "Account-specific customisations used in the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-provisioning" : { "tagline" : "Provisioning AWS Accounts through the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-requests" : { "tagline" : "Requesting AWS Accounts through the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "gatsby-baseline" : { "tagline" : "Pre-tooled baseline for Gatsby websites", topics : ["gatsby"] },
    "remix-baseline" : { "tagline" : "Pre-tooled baseline for Remix applications", topics : ["remix"] },
    "terraform-aws-control_tower_account_factory" : { "tagline" : "Fork of Account Factory for Terraform from AWS-IA", topics : ["aws", "control-tower", "aft"] },
  }
}