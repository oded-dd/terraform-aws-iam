resource "aws_iam_role" "this" {
  count                 = "${var.create ? 1 : 0}"
  name                  = "${var.name}"

  assume_role_policy    = "${var.assume_role_policy}"
  force_detach_policies = "${var.force_detach_policies}"
  path                  = "${var.path}"
  description           = "IAM Role for ${var.name}"
  max_session_duration  = "${var.max_session_duration}"
}
