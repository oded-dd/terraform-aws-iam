variable "create_role" {
  description = "Whether to create an IAM role"
  default     = true
}

variable "create_role_policy" {
  description = "Whether to create an IAM role policy"
  default     = true
}

variable "create_instance_profile" {
  description = "Whether to create an IAM instance profile"
  default     = true
}

variable "role_name" {
  description = "The name of the role" 
  default     = ""
}

variable "identifier" {
  description = "(Required) name identifier"
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

variable "policy" {
  description = "(Required) The policy document"
  type        = "string"
}
