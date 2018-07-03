output "this_iam_instance_profile_id" {
  description = "The instance profile's ID"
  value       = "${element(concat(aws_iam_instance_profile.this.*.id, list("")),0)}"
}

output "this_iam_instance_profile_name" {
  description = "The instance profile's name"
  value       = "${element(concat(aws_iam_instance_profile.this.*.name, list("")),0)}"
}

output "this_aws_iam_instance_profile_arn" {
  description = "The ARN assigned by AWS to the instance profile"
  value       = "${element(concat(aws_iam_instance_profile.this.*.arn, list("")),0)}"
}
