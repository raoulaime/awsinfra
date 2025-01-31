# VPC Output Values
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets_cidr_blocks" {
  description = "Private Subnets CIDR Blocks"
  value       = module.vpc.private_subnets_cidr_blocks
}

output "public_subnets_cidr_blocks" {
  description = "Public Subnets CIDR Blocks"
  value       = module.vpc.public_subnets_cidr_blocks
}

output "database_subnet_cidr_blocks" {
  description = "Database Subnets CIDR Blocks"
  value       = module.vpc.database_subnets_cidr_blocks
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}
