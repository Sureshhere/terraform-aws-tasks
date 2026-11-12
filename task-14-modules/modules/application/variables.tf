
variable "project_name" {
  description = "Project prefix used for naming application resources."
  type        = string
}

variable "ami_id" {
  description = "AMI ID used by the EC2 launch template."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}

variable "subnet_ids" {
  description = "Public subnet IDs used by the ALB and Auto Scaling group."
  type        = list(string)
}

variable "ssh_security_group_id" {
  description = "ID of the SSH security group."
  type        = string
}

variable "private_http_security_group_id" {
  description = "ID of the private HTTP security group."
  type        = string
}

variable "public_http_security_group_id" {
  description = "ID of the public HTTP security group."
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

variable "vpc_id" {
  description = "ID of the VPC used by the application target group."
  type        = string
}