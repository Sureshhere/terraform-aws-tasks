locals {
  name_prefix = var.project_name

  common_tags = {
    Project   = var.project_name
    ManagedBy = "Terraform"
  }

  blue_name  = "${local.name_prefix}-blue"
  green_name = "${local.name_prefix}-green"
}