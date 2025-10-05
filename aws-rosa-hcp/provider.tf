terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.35.0"
    }
    rhcs = {
      version = ">= 1.7.0"
      source  = "terraform-redhat/rhcs"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}

provider "rhcs" {
  token = var.rhcs_token
}