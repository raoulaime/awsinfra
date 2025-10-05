module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.1.5"

  name                   = local.name
  kubernetes_version     = local.kubernetes_version

  deletion_protection    = false

  enable_cluster_creator_admin_permissions = true
  endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  compute_config = {
    enabled    = true
    node_pools = ["general-purpose"]
  }

  tags = local.common_tags
}
