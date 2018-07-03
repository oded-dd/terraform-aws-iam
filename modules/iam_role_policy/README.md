# aws_iam_role_policy

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| name | (Required) The name of the role policy | string | - | yes |
| policy | (Required) The policy document | string | - | yes |
| role | (Required) The IAM role to attach to the policy | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this_iam_role_policy_id | The role policy ID, in the form of role_name:role_policy_name |
| this_iam_role_policy_name | The name of the policy |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
