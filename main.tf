module "repositories" {
  for_each = local.repositories

  source = "./modules/repository"
  providers = {
    github = github
  }

  name = each.key
}
