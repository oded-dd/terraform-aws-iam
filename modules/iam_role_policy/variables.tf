variable "create" {
  description = "(Optional) Whether to create this resource or not"
  type        = "string"
  default     = true
}

variable "name" {
  description = "(Required) The name of the role policy"
  type        = "string"
}

variable "policy" {
  description = "(Required) The policy document"
  type        = "string"
}

variable "role" {
  description = "(Required) The IAM role to attach to the policy"
  type        = "string"
}
