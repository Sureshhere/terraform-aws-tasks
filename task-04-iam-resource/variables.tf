
variable "aws_region" {
  description = "AWS region for the Terraform provider."
  type        = string
}

variable "iam_group_name" {
  description = "Name of the IAM group."
  type        = string
}

variable "iam_policy_name" {
  description = "Name of the custom S3 IAM policy."
  type        = string
}

variable "iam_role_name" {
  description = "Name of the EC2 IAM role."
  type        = string
}

variable "instance_profile_name" {
  description = "Name of the EC2 IAM instance profile."
  type        = string
}

variable "bucket_name" {
  description = "Name of the pre-created S3 bucket."
  type        = string
}

variable "project_id" {
  description = "Project identifier used for resource tags."
  type        = string
}