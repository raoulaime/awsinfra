locals {
  owners      = var.business_divsion
  environment = var.environment
  prefix      = "${var.business_divsion}-${var.environment}"

  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
}
