# Existing VPC
data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

# Public subnet A
data "aws_subnet" "public_a" {
  vpc_id            = data.aws_vpc.main.id
  cidr_block        = var.public_subnet_a_cidr
  availability_zone = "us-east-1a"
}

# Private subnet A
data "aws_subnet" "private_a" {
  vpc_id            = data.aws_vpc.main.id
  cidr_block        = var.private_subnet_a_cidr
  availability_zone = "us-east-1a"
}

# Public subnet B
data "aws_subnet" "public_b" {
  vpc_id            = data.aws_vpc.main.id
  cidr_block        = var.public_subnet_b_cidr
  availability_zone = "us-east-1b"
}

# Private subnet B
data "aws_subnet" "private_b" {
  vpc_id            = data.aws_vpc.main.id
  cidr_block        = var.private_subnet_b_cidr
  availability_zone = "us-east-1b"
}

# Existing EC2 SSH security group
data "aws_security_group" "ssh" {
  name   = var.ssh_security_group_name
  vpc_id = data.aws_vpc.main.id
}

# Existing EC2 HTTP security group
data "aws_security_group" "http" {
  name   = var.http_security_group_name
  vpc_id = data.aws_vpc.main.id
}

# Existing ALB HTTP security group
data "aws_security_group" "alb_http" {
  name   = var.alb_security_group_name
  vpc_id = data.aws_vpc.main.id
}

# Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}