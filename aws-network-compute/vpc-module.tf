module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = ">=5.1.1"

  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs  = slice(data.aws_availability_zones.available.names, 0, 3)

  private_subnets  = local.private_subnets
  public_subnets   = local.public_subnets
  database_subnets = local.database_subnets

  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_dns_support   = var.vpc_enable_dns_support

  enable_nat_gateway = var.vpc_enable_nat_gateway
  enable_vpn_gateway = var.vpc_enable_vpn_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  create_database_subnet_group           = var.vpc_create_database_subnet_group
  create_database_subnet_route_table     = var.vpc_create_database_subnet_route_table
  create_database_internet_gateway_route = var.create_database_internet_gateway_route
  create_database_nat_gateway_route      = var.create_database_nat_gateway_route

  tags     = local.common_tags
  vpc_tags = local.common_tags

  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }
}