data "aws_region" "current" {}

resource "aws_vpc_endpoint" "s3" {
  count           = var.create_s3_endpoint ? 1 : 0
  vpc_id          = module.vpc.vpc_id
  service_name    = "com.amazonaws.${data.aws_region.current.name}.s3"
  route_table_ids = concat(module.dynamic_subnets.private_route_table_ids, module.dynamic_subnets.public_route_table_ids)
}
