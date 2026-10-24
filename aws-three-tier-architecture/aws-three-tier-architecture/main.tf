# Main Terraform - VPC, subnets, ALB, EC2 ASG, RDS (simplified for demo)
locals {
  azs = length(var.availability_zones) > 0 ? var.availability_zones : slice(data.aws_availability_zones.available.names, 0, 3)
}

data "aws_availability_zones" "available" {}

resource "aws_vpc" "this" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = { Name = "three-tier-vpc" }
}

# ... (rest of full main.tf as provided in README)
# For brevity in this demo file, include the full example when using in production.
