module "public_ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = ">=5.1.0"

  name        = "public-ec2-sg"
  description = "Open SSH on Bastion EC2"
  vpc_id      = module.vpc.vpc_id

  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags         = local.common_tags
}

module "private_ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = ">=5.1.0"

  name        = "private-ec2-sg"
  description = "Open SSH, HTTP(S), ICMP on private instances from VPC"
  vpc_id      = module.vpc.vpc_id

  ingress_rules       = ["ssh-tcp", "http-80-tcp", "all-icmp", "https-443-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  egress_rules = ["all-all"]
  tags         = local.common_tags
}
