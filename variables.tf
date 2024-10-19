variable "token" {
  type        = string
  description = "Authentication credentials for the GitHub provider"
  sensitive   = true
}

locals {
  repositories = {
    ".github" : { tagline : "Default community health files for Grendel Consulting" },
    "caretaker.onibi.co.uk" : { tagline : "Background maintenance and toil for your online presence", visibility : "private" },
    "codebases" : { tagline : "Repository management", topics : ["github"] },
    "cloud-control-tower" : { tagline : "Decisions and handbook for implementing AWS Control Tower", topics : ["aws", "control-tower"], pages : true, homepage : "https://grendel-consulting.github.io/cloud-control-tower" },
    "cloud-factory" : { tagline : "Deploying and managing the Account Factory for Terraform for AWS Control Tower", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-baseline" : { tagline : "Global customisations used in the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-customisations" : { tagline : "Account-specific customisations used in the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-provisioning" : { tagline : "Provisioning AWS Accounts through the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "cloud-factory-requests" : { tagline : "Requesting AWS Accounts through the Account Factory for Terraform", topics : ["aws", "control-tower", "aft"] },
    "dotfiles" : { tagline : "Defaults and configuration for macOS across machines", topics : ["dotfiles"] },
    "favicon-creator" : { tagline : "Generating favicons from SVG and config", topics : ["favicon"] },
    "gatsby-baseline" : { tagline : "Pre-tooled baseline for Gatsby websites", topics : ["gatsby"] },
    "grendel-consulting.github.io" : { tagline : "Root of GitHub Pages for Grendel Consulting", pages : true, homepage : "https://grendel-consulting.github.io" },
    "remix-baseline" : { tagline : "Pre-tooled baseline for Remix applications", topics : ["remix"] },
    "steampipe-plugin-kolide" : { tagline : "Use SQL to instantly query your Kolide K2 fleet", discussions : true,
      topics : ["kolide", "postgresql", "postgresql-fdw", "sql", "steampipe", "steampipe-plugin"],
    homepage : "https://hub.steampipe.io/plugins/grendel-consulting/kolide" },
    "terraform-aws-cdk_bootstrap" : { tagline : "Refactoring the CDK Bootstrap Cloudformation", topics : ["aws", "cdktf"] },
    "terraform-aws-control_tower_account_factory" : { tagline : "Fork of Account Factory for Terraform from AWS-IA", topics : ["aws", "control-tower", "aft"] },
    "www.grendel-consulting.com" : { tagline : "Consulting website for Grendel Consulting", topics : ["gatsby", "cdktf"], homepage : "https://www.grendel-consulting.com" },
    "www.onibi.co.uk" : { tagline : "Landing pages for the Onibi imprint", homepage : "https://www.onibi.co.uk" },
  }
}
