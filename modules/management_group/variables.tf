variable "name" {
  type        = string
  description = "The name of the management group."
}
variable "parent_management_group_id" {
  type        = string
  description = "The ID of the parent management group."
  default     = null
}
variable "subscription_ids" {
  type        = list(string)
  description = "The IDs of the subscriptions to assign to the management group."
  default     = []
}
