variable "aws_region" {
  description = "AWS region for ec2 instance"
  type        = string
}

variable "project_id" {
  description = "Project id used for resource tagging"
  type        = string
}

variable "state_bucket" {
  description = "S3 bucket containing the remote terraform state"
  type        = string
}

variable "state_key" {
  description = "S3 key of the remote terraform state"
  type        = string
}

variable "ami_filter_name" {
  description = "EC2 AMI name filter attribute"
  type        = string
}

variable "ami_filter_architecture" {
  description = "EC2 AMI architecture filter attribute"
  type        = string
}

variable "ami_filter_state" {
  description = "EC2 AMI state filter attribute"
  type        = string
}