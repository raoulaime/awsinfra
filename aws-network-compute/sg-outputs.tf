output "public_ec2_sg_id" {
  description = "The ID of the security group"
  value       = module.public_ec2_sg.security_group_id
}

output "public_ec2_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.public_ec2_sg.security_group_vpc_id
}

output "public_ec2_sg_name" {
  description = "The name of the security group"
  value       = module.public_ec2_sg.security_group_name
}

output "private_ec2_sg_id" {
  description = "The ID of the security group"
  value       = module.private_ec2_sg.security_group_id
}

output "private_ec2_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.private_ec2_sg.security_group_vpc_id
}
output "private_ec2_sg_name" {
  description = "The name of the security group"
  value       = module.private_ec2_sg.security_group_name
}
