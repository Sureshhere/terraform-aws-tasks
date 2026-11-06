variable "aws_region" {
  description = "AWS deployment region"
  type        = string
}

variable "project_id" {
  description = "Project identifier for resource tagging"
  type        = string
}

variable "vpc_name" {
  description = "Existing VPC name"
  type        = string
}

variable "public_subnet_a_cidr" {
  description = "CIDR of public subnet A"
  type        = string
}

variable "private_subnet_a_cidr" {
  description = "CIDR of private subnet A"
  type        = string
}

variable "public_subnet_b_cidr" {
  description = "CIDR of public subnet B"
  type        = string
}

variable "private_subnet_b_cidr" {
  description = "CIDR of private subnet B"
  type        = string
}

variable "ssh_security_group_name" {
  description = "Existing EC2 SSH security group name"
  type        = string
}

variable "http_security_group_name" {
  description = "Existing EC2 HTTP security group name"
  type        = string
}

variable "alb_security_group_name" {
  description = "Existing ALB HTTP security group name"
  type        = string
}

variable "iam_instance_profile" {
  description = "Existing EC2 IAM instance profile"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
}

variable "aws_launch_template_name" {
  description = "Launch Template name"
  type        = string
}

variable "aws_asg_name" {
  description = "Auto Scaling Group name"
  type        = string
}

variable "load_balancer" {
  description = "Application Load Balancer name"
  type        = string
}