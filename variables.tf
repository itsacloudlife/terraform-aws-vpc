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
