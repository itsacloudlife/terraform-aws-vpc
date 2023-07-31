module "vpc" {
  source     = "cloudposse/vpc/aws"
  version    = "0.26.1"
  namespace  = var.namespace
  stage      = var.stage
  name       = var.name
  cidr_block = var.cidr_block
}

module "dynamic_subnets" {
  source    = "cloudposse/dynamic-subnets/aws"
  version   = "0.39.3"
  namespace = var.namespace
  stage     = var.stage
  # name               = var.name
  availability_zones = var.availability_zones
  vpc_id             = module.vpc.vpc_id
  igw_id             = module.vpc.igw_id
  cidr_block         = var.cidr_block
}

module "flow_logs" {
  source    = "cloudposse/vpc-flow-logs-s3-bucket/aws"
  version   = "1.0.1"
  namespace = var.namespace
  stage     = var.stage
  name      = "flowlogs"
  vpc_id    = module.vpc.vpc_id
  s3_object_ownership = var.s3_object_ownership
}