resource "aws_iam_role_policy" "this" {
  count  = "${var.create ? 1 : 0}"

  name   = "${var.name}"

  policy = "${var.policy}"
  role   = "${var.role}"
}
