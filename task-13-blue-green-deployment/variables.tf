variable "aws_region" {
  description = "AWS region where Blue-Green infrastructure will be deployed."
  type        = string
}

variable "project_name" {
  description = "Project identifier used for naming AWS resources."
  type        = string
}

variable "blue_weight" {
  description = "Traffic weight assigned to the Blue target group."
  type        = number
}

variable "green_weight" {
  description = "Traffic weight assigned to the Green target group."
  type        = number
}

variable "instance_type" {
  description = "EC2 instance type used by Blue and Green environments."
  type        = string
}

variable "ami_id" {
  description = "Amazon Machine Image ID used by the launch templates."
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances in each environment."
  type        = number
}

variable "min_size" {
  description = "Minimum number of EC2 instances in each Auto Scaling Group."
  type        = number
}

variable "max_size" {
  description = "Maximum number of EC2 instances in each Auto Scaling Group."
  type        = number
}