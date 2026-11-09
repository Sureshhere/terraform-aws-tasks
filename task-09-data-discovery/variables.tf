variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "public_subnet_name" {
  description = "Public Subnet Name"
  type        = string
}

variable "security_group_name" {
  description = "Security Group Name"
  type        = string
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
}
