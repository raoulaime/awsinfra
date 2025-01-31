module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = ">=5.2.1"

  name = "${var.environment}-vm-bastion"

  ami           = data.aws_ami.amazon_linux_23.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair

  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_ec2_sg.security_group_id]
  tags                   = local.common_tags

  depends_on = [module.public_ec2_sg, module.vpc]
}
