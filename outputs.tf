output "this_iam_role_name" {
  description = "The name of the role"
  value       = "${module.iam_role.this_iam_role_name}"
}

output "this_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the role"
  value       = "${module.iam_role.this_iam_role_arn}"
}

output "this_iam_role_policy_id" {
  description = "The role policy ID, in the form of role_name:role_policy_name"
  value       = "${module.iam_role_policy.this_iam_role_policy_id}"
}

output "this_iam_role_policy_name" {
  description = "The name of the policy"
  value       = "${module.iam_role_policy.this_iam_role_policy_name}"
}

output "this_iam_instance_profile_id" {
  description = "The instance profile's ID"
  value       = "${module.iam_instance_profile.this_iam_instance_profile_id}"
}

output "this_iam_instance_profile_name" {
  description = "The instance profile's name"
  value       = "${module.iam_instance_profile.this_iam_instance_profile_name}"
}

output "this_aws_iam_instance_profile_arn" {
  description = "The ARN assigned by AWS to the instance profile"
  value       = "${module.iam_instance_profile.this_aws_iam_instance_profile_arn}"
}
