data "aws_caller_identity" "current" {}

module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = ">=3.14.1"

  bucket                = var.backend_bucket_name
  force_destroy         = true
  expected_bucket_owner = data.aws_caller_identity.current.account_id

  versioning = {
    status     = true
    mfa_delete = false
  }

  tags = local.common_tags

}