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

output "route_table_ids" {
  value = concat(module.dynamic_subnets.private_route_table_ids, module.dynamic_subnets.public_route_table_ids)
}