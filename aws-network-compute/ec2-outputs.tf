output "bastion_instance_public_ip" {
  value = module.ec2_public.public_ip
}

output "bastion_instance_public_dns" {
  value = module.ec2_public.public_dns
}

output "private_instances_ip_address" {
  value = { for k, v in module.ec2_private : k => v.private_ip }
}
