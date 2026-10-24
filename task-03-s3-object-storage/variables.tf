variable "aws_region" {
  description = "AWS region in which to create the S3 bucket."
  type        = string
}

variable "bucket_name" {
  description = "Globally unique name for the S3 bucket."
  type        = string
}

variable "project_id" {
  description = "Project identifier used for the S3 bucket tag."
  type        = string
}