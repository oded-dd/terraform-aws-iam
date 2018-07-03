output "this_iam_role_policy_id" {
  description = "The role policy ID, in the form of role_name:role_policy_name"
  value       = "${element(concat(aws_iam_role_policy.this.*.id, list("")),0)}"
}

output "this_iam_role_policy_name" {
  description = "The name of the policy"
  value       = "${element(concat(aws_iam_role_policy.this.*.name, list("")),0)}"
}
