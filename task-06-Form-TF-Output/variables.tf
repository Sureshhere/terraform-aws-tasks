variable "aws_region" {
  description = "AWS region for the VPC infrastructure"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_names" {
  description = "Names of the three public subnets"
  type        = list(string)
}

variable "subnet_cidrs" {
  description = "CIDR blocks for the three public subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones for the three public subnets"
  type        = list(string)
}

variable "internet_gateway_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "Name of the Route Table"
  type        = string
}