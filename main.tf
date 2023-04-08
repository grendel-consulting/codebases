module "repositories" {
  for_each = local.repositories

  source = "./modules/repository"
  providers = {
    github = github
  }

  name    = each.key
  tagline = lookup(each.value, "tagline", null)
  topics  = lookup(each.value, "topics", [])
}
