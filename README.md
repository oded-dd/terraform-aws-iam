# AWS IAM Terraform module

Terraform module which creates IAM resources on AWS

These types of resources are supported:

* [IAM role](https://www.terraform.io/docs/providers/aws/r/iam_role.html)
* [IAM role policy](https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html)
* [IAM instance profile](https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html)

Root module calls these modules which can also be used separately to create independent resources:

* [iam_role](https://github.com/oded-dd/terraform-aws-iam/tree/master/modules/iam_role) - creates IAM role
* [iam_role_policy](https://github.com/oded-dd/terraform-aws-iam/tree/master/modules/iam_role_policy) - creates IAM role policy
* [iam_instance_profile](https://github.com/oded-dd/terraform-aws-iam/tree/master/modules/iam_instance_profile) - creates IAM instance profile

## Usage
```hcl
module "test-repo" {
  source = "github.com/oded-dd/terraform-aws-iam"

  identifier = "test"
  assume_role_policy = "${file(./assume_role_policy)}"
  policy = "${file(./policy)}"

  # ... omitted
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| assume_role_policy | (Required) The policy that grants an entity permission to assume the role | string | `` | no |
| create_instance_profile | Whether to create an IAM instance profile | string | `true` | no |
| create_role | Whether to create an IAM role | string | `true` | no |
| create_role_policy | Whether to create an IAM role policy | string | `true` | no |
| force_detach_policies | (Optional) Specifies to force detaching any policies the role has before destroying it | string | `false` | no |
| identifier | (Required) name identifier | string | - | yes |
| max_session_duration | (Optional) The maximum session duration (in seconds) that you want to set for the specified role | string | `3600` | no |
| path | (Optional) The path to the role | string | `/` | no |
| policy | (Required) The policy document | string | - | yes |
| role_name | The name of the role | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_aws_iam_instance_profile_arn | The ARN assigned by AWS to the instance profile |
| this_iam_instance_profile_id | The instance profile's ID |
| this_iam_instance_profile_name | The instance profile's name |
| this_iam_role_arn | The Amazon Resource Name (ARN) specifying the role |
| this_iam_role_name | The name of the role |
| this_iam_role_policy_id | The role policy ID, in the form of role_name:role_policy_name |
| this_iam_role_policy_name | The name of the policy |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Oded David](https://github.com/oded-dd).

## License

Apache 2 Licensed. See LICENSE for full details.
