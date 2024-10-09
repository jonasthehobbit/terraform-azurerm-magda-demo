# Created a root group!!
locals {
  prefix = "magda_demo"
}
# creates the root group under the tenancy root managment group
module "root" {
  source = "./modules/management_group"
  name = "${local.prefix}-root"
}
# creates the level1 groups under the root group created above
module "level1" {
  for_each = toset(var.level1)
  source = "./modules/management_group"
  name = "${local.prefix}-${each.key}"
  parent_management_group_id = module.root.management_group_id
}
# creates the level2 groups under the level1 groups created above
module "level2" {
  for_each = var.level2
  source = "./modules/management_group"
  name = "${local.prefix}-${each.key}"
  parent_management_group_id = module.level1[each.value.management_group_key].management_group_id
  subscription_ids = each.value.subscription_ids
}