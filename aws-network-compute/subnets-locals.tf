locals {
  private_subnets = [
    cidrsubnet(var.vpc_cidr_block, 8, 1),
    cidrsubnet(var.vpc_cidr_block, 8, 2),
    cidrsubnet(var.vpc_cidr_block, 8, 3)
  ]
  public_subnets = [
    cidrsubnet(var.vpc_cidr_block, 8, 11),
    cidrsubnet(var.vpc_cidr_block, 8, 12),
    cidrsubnet(var.vpc_cidr_block, 8, 13)
  ]

  database_subnets = [
    cidrsubnet(var.vpc_cidr_block, 8, 21),
    cidrsubnet(var.vpc_cidr_block, 8, 22),
    cidrsubnet(var.vpc_cidr_block, 8, 23)
  ]

}