resource "aws_eip" "bastion_eip" {
  domain     = "vpc"
  instance   = module.ec2_public.id
  depends_on = [module.ec2_public, module.vpc]

  tags       = local.common_tags
}


output "bastion_ec2_ip" {
  value = aws_eip.bastion_eip.public_ip
}