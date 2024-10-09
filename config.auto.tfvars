root = "renamed"
level1 = [
  "platform",
  "landingzones",
  "other"
]
level2 = {
  "networks" = {
    name                 = "networks"
    management_group_key = "platform"
  }
  "management" = {
    name                 = "management"
    management_group_key = "platform"
  }
  "alz001" = {
    name                 = "alz001"
    management_group_key = "landingzones"
    subscription_ids     = ["de706246-7701-45d8-9039-c4d720e7a39b"] 
  }
  "alz002" = {
    name                 = "alz002"
    management_group_key = "landingzones"
  }
  "random" = {
    name                 = "random"
    management_group_key = "other"
  }
}
