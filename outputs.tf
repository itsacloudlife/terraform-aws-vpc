output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "private_subnets" {
  value = join(", ", module.dynamic_subnets.private_subnet_ids)
}

output "public_subnets" {
  value = join(", ", module.dynamic_subnets.public_subnet_ids)
}
