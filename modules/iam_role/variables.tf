variable "create" {
  description = "(Optional) Whether to create this resource or not"
  type        = "string"
  default     = true
}

variable "name" {
  description = "(Required) The name of the role"
  type        = "string"
}

variable "assume_role_policy" {
  description = "(Required) The policy that grants an entity permission to assume the role"
  type        = "string"
  default     = ""
}

variable "force_detach_policies" {
  description = "(Optional) Specifies to force detaching any policies the role has before destroying it"
  type        = "string"
  default     = "false"
}

variable "path" {
  description = "(Optional) The path to the role"
  type        = "string"
  default     = "/"
}

variable "max_session_duration" {
  description = "(Optional) The maximum session duration (in seconds) that you want to set for the specified role"
  type        = "string"
  default     = "3600"
}
