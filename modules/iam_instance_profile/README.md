# aws_iam_instance_profile

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | (Optional) Whether to create this resource or not | string | `true` | no |
| name | (Required) The profile's name | string | - | yes |
| path | (Optional) Path in which to create the profile | string | `/` | no |
| role | (Optional) The role name to include in the profile | string | `` | no |

## Outputs

| Name | Description |
|------|-------------|
| this_aws_iam_instance_profile_arn | The ARN assigned by AWS to the instance profile |
| this_iam_instance_profile_id | The instance profile's ID |
| this_iam_instance_profile_name | The instance profile's name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
