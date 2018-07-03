output "this_iam_role_name" {
  description = "The name of the role"
  value       = "${element(concat(aws_iam_role.this.*.name, list("")),0)}"
}

output "this_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the role"
  value       = "${element(concat(aws_iam_role.this.*.arn, list("")),0)}"
}
