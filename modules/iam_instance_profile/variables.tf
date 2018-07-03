variable "create" {
  description = "(Optional) Whether to create this resource or not"
  type        = "string"
  default     = true
}

variable "name" {
  description = "(Required) The profile's name"
  type        = "string"
}

variable "path" {
  description = "(Optional) Path in which to create the profile"
  type        = "string"
  default     = "/"
}

variable "role" {
  description = "(Optional) The role name to include in the profile"
  type        = "string"
  default     = ""
}
