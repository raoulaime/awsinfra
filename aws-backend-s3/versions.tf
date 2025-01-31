terraform {
  required_version = ">=1.9.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.82.2"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}
