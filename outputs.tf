output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
  description = "VPC CIDR Block"
}

output "additional_cidr_blocks" {
  value       = module.vpc.additional_cidr_blocks
  description = "Additional VPC CIDR Blocks"
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

output "igw_id" {
  value       = module.vpc.igw_id
  description = "Internet Gateway ID"
}

output "logflow_bucket_id" {
  value       = module.flow_logs.bucket_id
  description = "S3 Bucket ID"
}
