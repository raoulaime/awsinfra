module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~>6.0"

  name = "${local.prefix}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs  = slice(data.aws_availability_zones.available.names, 0, 3)

  private_subnets = local.private_subnets
  public_subnets  = local.public_subnets
  intra_subnets   = local.intra_subnets

  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_dns_support   = var.vpc_enable_dns_support

  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = local.common_tags

}