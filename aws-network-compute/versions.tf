# Terraform Block
terraform {
  required_version = ">=1.9.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version =  "6.9.0"
    }
  }
  backend "s3" {
    bucket  = "tfbackends3lab01"
    key     = "dev/lab/network.tfstate"
    region  = "us-east-1"
    encrypt = true
    use_lockfile = true
  }

}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}
