module "ec2_private" {
  depends_on = [module.vpc, module.private_ec2_sg]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = ">=5.2.1"
  
  for_each = { for i in range(var.private_instance_count) : tostring(i) => i }

  name          = "${var.environment}-vm-${each.key}"
  ami           = data.aws_ami.amazon_linux_23.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair

  vpc_security_group_ids = [module.private_ec2_sg.security_group_id]

  subnet_id = element(module.vpc.private_subnets, tonumber(each.key))
  user_data = file("${path.module}/userdata.sh")
  tags      = local.common_tags
}
