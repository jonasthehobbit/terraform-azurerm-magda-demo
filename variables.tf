variable "root" {
  type        = string
  description = "A map of all management groups to create."
  default     = "root"
}
variable "level1" {
  type        = list(string)
  description = "A map of all management groups to create."
  default     = ["landingzone", "shared", "platform", "workloads"]
}
variable "level2" {
  type = map(object({
    name                 = string
    management_group_key = string
    subscription_ids     = optional(list(string), [])
  }))
  description = "A map of all management groups to create."
}
