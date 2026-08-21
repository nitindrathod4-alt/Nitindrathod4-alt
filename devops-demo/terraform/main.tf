terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

# Demo-safe foundation: creates no billable resources by itself.
# Add VPC/EC2/EKS modules only when real AWS credentials and a target account are configured.

output "deployment_region" {
  value = var.aws_region
}
