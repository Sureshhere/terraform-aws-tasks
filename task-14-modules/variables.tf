variable "aws_region" {
  description = "AWS region for deploying the infrastructure."
  type        = string
}

variable "project_name" {
  description = "Project prefix used for naming AWS resources."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "subnet_names" {
  description = "Names of the public subnets."
  type        = list(string)
}

variable "subnet_cidrs" {
  description = "CIDR blocks for the public subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones for the public subnets."
  type        = list(string)
}

variable "allowed_ip_range" {
  description = "CIDR ranges allowed to access SSH and public HTTP."
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type for the application."
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances."
  type        = number
}

variable "min_size" {
  description = "Minimum number of EC2 instances."
  type        = number
}

variable "max_size" {
  description = "Maximum number of EC2 instances."
  type        = number
}
