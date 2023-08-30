#-----------------------------------
#    Naming
#-----------------------------------
variable "name" {
  type        = string
  description = "Name (unique identifier for app or service)"
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. abbrv of company)"
}

variable "delimiter" {
  type        = string
  description = "The delimiter to be used in labels."
  default     = "-"
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "region" {
  type        = string
  description = "Region"
}

#-----------------------------------
#    Networking
#-----------------------------------

variable "cidr_block" {
  type        = string
  description = "Cidr block of the VPC"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones to use"
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "s3_object_ownership" {
  type        = string
  description = "S3 object ownership"
  default     = "BucketOwnerEnforced"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`)"
  default     = {}
}

variable "dynamic_subnets_version" {
  description = "Dynamic subnets version"
  type        = string
}