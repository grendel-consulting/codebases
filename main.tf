module "repositories" {
  for_each = local.repositories

  source = "./modules/repository"
  providers = {
    github = github
  }

  name       = each.key
  tagline    = lookup(each.value, "tagline", null)
  topics     = lookup(each.value, "topics", [])
  homepage   = lookup(each.value, "homepage", null)
  pages      = lookup(each.value, "pages", null)
  visibility = lookup(each.value, "visibility", "public")
}
