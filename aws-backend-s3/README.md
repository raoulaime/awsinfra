<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.82.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.82.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dynamodb_table_application"></a> [dynamodb\_table\_application](#module\_dynamodb\_table\_application) | terraform-aws-modules/dynamodb-table/aws | 3.3.0 |
| <a name="module_dynamodb_table_devops_dev"></a> [dynamodb\_table\_devops\_dev](#module\_dynamodb\_table\_devops\_dev) | terraform-aws-modules/dynamodb-table/aws | 3.3.0 |
| <a name="module_dynamodb_table_devops_stag"></a> [dynamodb\_table\_devops\_stag](#module\_dynamodb\_table\_devops\_stag) | terraform-aws-modules/dynamodb-table/aws | 3.3.0 |
| <a name="module_dynamodb_table_network"></a> [dynamodb\_table\_network](#module\_dynamodb\_table\_network) | terraform-aws-modules/dynamodb-table/aws | 3.3.0 |
| <a name="module_s3_bucket"></a> [s3\_bucket](#module\_s3\_bucket) | terraform-aws-modules/s3-bucket/aws | 3.14.1 |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/5.82.2/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_backend_lockstate_table"></a> [application\_backend\_lockstate\_table](#input\_application\_backend\_lockstate\_table) | Name of the DynamoDB table for application | `string` | `"terraform-application-lock-state"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which AWS Resources to be created | `string` | `"us-east-1"` | no |
| <a name="input_backend_bucket_name"></a> [backend\_bucket\_name](#input\_backend\_bucket\_name) | Backend Bucket Name | `string` | `"kenitra-tf-backend"` | no |
| <a name="input_backend_state_key"></a> [backend\_state\_key](#input\_backend\_state\_key) | n/a | `string` | `"dev/network/terraform.tfstate"` | no |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | Controls how you are billed for read/write throughput and how you manage capacity. The valid values are PROVISIONED or PAY\_PER\_REQUEST | `string` | `"PAY_PER_REQUEST"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division in the large organization this Infrastructure belongs | `string` | `"it"` | no |
| <a name="input_default_region"></a> [default\_region](#input\_default\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_dev_backend_lockstate_table"></a> [dev\_backend\_lockstate\_table](#input\_dev\_backend\_lockstate\_table) | Name of the DynamoDB table for IAC DevOps Dev | `string` | `"iacdevops-dev-tfstate"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Variable used as a prefix | `string` | `"dev"` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | The attribute to use as the hash (partition) key. Must also be defined as an attribute | `string` | `"LockID"` | no |
| <a name="input_network_backend_lockstate_table"></a> [network\_backend\_lockstate\_table](#input\_network\_backend\_lockstate\_table) | Name of the DynamoDB table for Network | `string` | `"terraform-network-lock-state"` | no |
| <a name="input_stag_backend_lockstate_table"></a> [stag\_backend\_lockstate\_table](#input\_stag\_backend\_lockstate\_table) | Name of the DynamoDB table for IAC DevOps Staging | `string` | `"iacdevops-stag-tfstate"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | The name of the bucket. |
<!-- END_TF_DOCS -->