module "vpc" {
  source                  = "cloudposse/vpc/aws"
  version                 = "2.1.0"
  namespace               = var.namespace
  stage                   = var.stage
  name                    = var.name
  ipv4_primary_cidr_block = var.cidr_block
}

module "dynamic_subnets" {
  source    = "cloudposse/dynamic-subnets/aws"
  version   = "2.4.1"
  namespace = var.namespace
  stage     = var.stage
  # name               = var.name
  availability_zones = var.availability_zones
  vpc_id             = module.vpc.vpc_id
  igw_id             = module.vpc.igw_id
  ipv4_cidr_block    = var.cidr_block
}

module "flow_logs" {
  source    = "cloudposse/vpc-flow-logs-s3-bucket/aws"
  version   = "1.0.1"
  namespace = var.namespace
  stage     = var.stage
  name      = "flowlogs"
  vpc_id    = module.vpc.vpc_id
}
