# aws_iam_role

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| assume_role_policy | (Required) The policy that grants an entity permission to assume the role | string | `` | no |
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| force_detach_policies | (Optional) Specifies to force detaching any policies the role has before destroying it | string | `false` | no |
| max_session_duration | (Optional) The maximum session duration (in seconds) that you want to set for the specified role | string | `3600` | no |
| name | (Required) The name of the role | string | - | yes |
| path | (Optional) The path to the role | string | `/` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_iam_role_arn | The Amazon Resource Name (ARN) specifying the role |
| this_iam_role_name | The name of the role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
