variable "region" {
  default = "us-west-2"
}

variable "tags" {
  description = "Tags to propogate to all supported resources"
  type        = map(string)

  default = {
    Env        = "ce_test"
    managed-by = "Terraform"
  }
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC being deployed"
  default     = "ce_test_vpc"
}

variable "vpc_ip_cidr" {
  type        = string
  description = "IP CIDR assigned to the environment"
  default     = "10.0.0.0/16"
}
