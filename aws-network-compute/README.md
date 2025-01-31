<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.9.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=5.82.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=5.82.2 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_private"></a> [ec2\_private](#module\_ec2\_private) | terraform-aws-modules/ec2-instance/aws | >=5.2.1 |
| <a name="module_ec2_public"></a> [ec2\_public](#module\_ec2\_public) | terraform-aws-modules/ec2-instance/aws | >=5.2.1 |
| <a name="module_private_ec2_sg"></a> [private\_ec2\_sg](#module\_private\_ec2\_sg) | terraform-aws-modules/security-group/aws | >=5.1.0 |
| <a name="module_public_ec2_sg"></a> [public\_ec2\_sg](#module\_public\_ec2\_sg) | terraform-aws-modules/security-group/aws | >=5.1.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | >=5.1.1 |

## Resources

| Name | Type |
|------|------|
| [aws_eip.bastion_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_key_pair.key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [local_file.ssh_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.tls_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_ami.amazon_linux_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.amazon_linux_23](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.centos8](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.centos9](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_ami.rhel9](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which AWS Resources to be created | `string` | `"us-east-1"` | no |
| <a name="input_business_divsion"></a> [business\_divsion](#input\_business\_divsion) | Business Division in the large organization this Infrastructure belongs | `string` | `"SAP"` | no |
| <a name="input_create_database_internet_gateway_route"></a> [create\_database\_internet\_gateway\_route](#input\_create\_database\_internet\_gateway\_route) | Controls if an internet gateway route for public database access should be created | `bool` | `false` | no |
| <a name="input_create_database_nat_gateway_route"></a> [create\_database\_nat\_gateway\_route](#input\_create\_database\_nat\_gateway\_route) | Controls if a nat gateway route should be created to give internet access to the database subnets | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment Variable used as a prefix | `string` | `"dev"` | no |
| <a name="input_instance_keypair"></a> [instance\_keypair](#input\_instance\_keypair) | AWS EC2 Key pair for EC2 Instance | `string` | `"terraform-key"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 Instance Type | `string` | `"t3.micro"` | no |
| <a name="input_private_instance_count"></a> [private\_instance\_count](#input\_private\_instance\_count) | AWS EC2 Private Instances Count | `number` | `3` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | VPC CIDR Block | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_create_database_subnet_group"></a> [vpc\_create\_database\_subnet\_group](#input\_vpc\_create\_database\_subnet\_group) | VPC Create Database Subnet Group | `bool` | `true` | no |
| <a name="input_vpc_create_database_subnet_route_table"></a> [vpc\_create\_database\_subnet\_route\_table](#input\_vpc\_create\_database\_subnet\_route\_table) | VPC Create Database Subnet Route Table | `bool` | `true` | no |
| <a name="input_vpc_enable_dns_hostnames"></a> [vpc\_enable\_dns\_hostnames](#input\_vpc\_enable\_dns\_hostnames) | Should be true to enable DNS hostnames in the VPC | `bool` | `true` | no |
| <a name="input_vpc_enable_dns_support"></a> [vpc\_enable\_dns\_support](#input\_vpc\_enable\_dns\_support) | Should be true to enable DNS support in the VPC | `bool` | `true` | no |
| <a name="input_vpc_enable_nat_gateway"></a> [vpc\_enable\_nat\_gateway](#input\_vpc\_enable\_nat\_gateway) | Enable NAT Gateways for Private Subnets Outbound Communication | `bool` | `false` | no |
| <a name="input_vpc_enable_vpn_gateway"></a> [vpc\_enable\_vpn\_gateway](#input\_vpc\_enable\_vpn\_gateway) | Enable NAT Gateways for Private Subnets Outbound Communication | `bool` | `false` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC Name | `string` | `"lab-vpc"` | no |
| <a name="input_vpc_single_nat_gateway"></a> [vpc\_single\_nat\_gateway](#input\_vpc\_single\_nat\_gateway) | Enable only single NAT Gateway in one Availability Zone to save costs during our demos | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azs"></a> [azs](#output\_azs) | A list of availability zones spefified as argument to this module |
| <a name="output_bastion_instance_public_dns"></a> [bastion\_instance\_public\_dns](#output\_bastion\_instance\_public\_dns) | n/a |
| <a name="output_bastion_instance_public_ip"></a> [bastion\_instance\_public\_ip](#output\_bastion\_instance\_public\_ip) | n/a |
| <a name="output_database_subnet_cidr_blocks"></a> [database\_subnet\_cidr\_blocks](#output\_database\_subnet\_cidr\_blocks) | Database Subnets CIDR Blocks |
| <a name="output_nat_public_ips"></a> [nat\_public\_ips](#output\_nat\_public\_ips) | List of public Elastic IPs created for AWS NAT Gateway |
| <a name="output_private_ec2_sg_id"></a> [private\_ec2\_sg\_id](#output\_private\_ec2\_sg\_id) | The ID of the security group |
| <a name="output_private_ec2_sg_name"></a> [private\_ec2\_sg\_name](#output\_private\_ec2\_sg\_name) | The name of the security group |
| <a name="output_private_ec2_sg_vpc_id"></a> [private\_ec2\_sg\_vpc\_id](#output\_private\_ec2\_sg\_vpc\_id) | The VPC ID |
| <a name="output_private_instances_ip_address"></a> [private\_instances\_ip\_address](#output\_private\_instances\_ip\_address) | n/a |
| <a name="output_private_subnets_cidr_blocks"></a> [private\_subnets\_cidr\_blocks](#output\_private\_subnets\_cidr\_blocks) | Private Subnets CIDR Blocks |
| <a name="output_public_ec2_sg_id"></a> [public\_ec2\_sg\_id](#output\_public\_ec2\_sg\_id) | The ID of the security group |
| <a name="output_public_ec2_sg_name"></a> [public\_ec2\_sg\_name](#output\_public\_ec2\_sg\_name) | The name of the security group |
| <a name="output_public_ec2_sg_vpc_id"></a> [public\_ec2\_sg\_vpc\_id](#output\_public\_ec2\_sg\_vpc\_id) | The VPC ID |
| <a name="output_public_subnets_cidr_blocks"></a> [public\_subnets\_cidr\_blocks](#output\_public\_subnets\_cidr\_blocks) | Public Subnets CIDR Blocks |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->