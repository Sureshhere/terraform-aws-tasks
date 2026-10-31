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

variable "ami_id" {
  description = "AMI ID used to launch the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}
