locals {
  role_name             = "${coalesce(var.role_name, module.iam_role.this_iam_role_name)}"
  enable_create_role    = "${var.role_name == "" ? var.create_role : 0}"
}

module "iam_role" {
  source                = "./modules/iam_role"

  create                = "${local.enable_create_role}"

  name                  = "${var.identifier}"
  assume_role_policy    = "${var.assume_role_policy}"
  force_detach_policies = "${var.force_detach_policies}"
  path                  = "${var.path}"
  max_session_duration  = "${var.max_session_duration}"
}

module "iam_role_policy" {
  source                = "./modules/iam_role_policy"

  create                = "${var.create_role_policy}"

  name                  = "${var.identifier}"
  policy                = "${var.policy}"
  role                  = "${local.role_name}"
}

module "iam_instance_profile" {
  source                = "./modules/iam_instance_profile"

  create                = "${var.create_instance_profile}"

  name                  = "${var.identifier}"
  path                  = "${var.path}"
  role                  = "${local.role_name}"
}
