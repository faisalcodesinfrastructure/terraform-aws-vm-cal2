<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.18 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | ~> 0.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.18.0 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.31.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [hcp_packer_image.image](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/packer_image) | data source |
| [hcp_packer_iteration.iteration](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/packer_iteration) | data source |
| [terraform_remote_state.foundation](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.sg](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | Optional AMI ID - use this if not blank string, otherwise use AMI per ami\_filter and ami\_owner. | `string` | `""` | no |
| <a name="input_foundation_workspace"></a> [foundation\_workspace](#input\_foundation\_workspace) | Name of workspace from which to get information on VPC in which to provision resources. | `string` | n/a | yes |
| <a name="input_global_tags"></a> [global\_tags](#input\_global\_tags) | Default tags to apply to AWS resources. Meant to be defined via Variable Sets in your Terraform Cloud organization, but can be overriden if needed. | `map(string)` | `{}` | no |
| <a name="input_hcp_packer_image_bucket_name"></a> [hcp\_packer\_image\_bucket\_name](#input\_hcp\_packer\_image\_bucket\_name) | The slug of the HCP Packer Registry image bucket to pull from. | `string` | `""` | no |
| <a name="input_hcp_packer_image_channel"></a> [hcp\_packer\_image\_channel](#input\_hcp\_packer\_image\_channel) | The channel that points to the version of the image you want. | `string` | `""` | no |
| <a name="input_instance_count"></a> [instance\_count](#input\_instance\_count) | Number of instances to provision. | `number` | `1` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance size. | `string` | `"t2.medium"` | no |
| <a name="input_local_tags"></a> [local\_tags](#input\_local\_tags) | Local tags to apply to cloud resources. | `map(string)` | `{}` | no |
| <a name="input_org"></a> [org](#input\_org) | Terraform Cloud/Enterprise Organization Name | `string` | n/a | yes |
| <a name="input_owner_cidr_blocks"></a> [owner\_cidr\_blocks](#input\_owner\_cidr\_blocks) | CIDR blocks that will be allowed to access our instance. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Naming prefix | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region in which to deploy our instance. | `string` | `"us-east-1"` | no |
| <a name="input_root_volume_size"></a> [root\_volume\_size](#input\_root\_volume\_size) | Root volume size in GB. | `number` | `50` | no |
| <a name="input_root_volume_type"></a> [root\_volume\_type](#input\_root\_volume\_type) | Root volume type. | `string` | `"gp2"` | no |
| <a name="input_sg_workspace"></a> [sg\_workspace](#input\_sg\_workspace) | Name of workspace from which to get foundational security groups to use. | `string` | n/a | yes |
| <a name="input_ssh_key_name"></a> [ssh\_key\_name](#input\_ssh\_key\_name) | Name of SSH key in AWS region. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_ips"></a> [private\_ips](#output\_private\_ips) | n/a |
| <a name="output_public_ips"></a> [public\_ips](#output\_public\_ips) | n/a |
<!-- END_TF_DOCS -->