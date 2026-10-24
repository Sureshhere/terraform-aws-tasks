variable "aws_region" {
  description = "AWS region for the SSH authentication lab."
  type        = string
}

variable "project_id" {
  description = "Unique project identifier."
  type        = string
}

variable "aws_security_group_name" {
  description = "Name tag of the SSH security group."
  type        = string
}

variable "aws_keypair_name" {
  description = "Name of the EC2 SSH key pair to register."
  type        = string
}

variable "aws_instance_name" {
  description = "Name tag for the EC2 instance."
  type        = string
}

variable "ssh_key" {
  description = "Provides custom public SSH key."
  type        = string
  sensitive   = true
}

variable "instance_type" {
  description = "EC2 instance type for the SSH lab."
  type        = string
}

variable "ami_owner" {
  description = "AWS account ID that owns the selected AMI."
  type        = string
}

variable "ami_name_filter" {
  description = "Name pattern used to find the Amazon Linux AMI."
  type        = string
}
