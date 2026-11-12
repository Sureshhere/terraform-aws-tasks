resource "aws_security_group" "ssh" {
  name        = var.ssh_sg_name
  description = "Allow SSH access from approved IP addresses."
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH access from approved IP ranges."
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip_range
  }

  egress {
    description = "Allow outbound traffic."
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = var.ssh_sg_name
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}

resource "aws_security_group" "public_http" {
  name        = var.public_http_sg_name
  description = "Allow public HTTP access to the load balancer."
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP access from approved IP ranges."
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.allowed_ip_range
  }

  egress {
    description = "Allow outbound traffic."
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = var.public_http_sg_name
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}

resource "aws_security_group" "private_http" {
  name        = var.private_http_sg_name
  description = "Allow HTTP traffic from the public HTTP security group."
  vpc_id      = var.vpc_id

  ingress {
    description     = "HTTP access from the load balancer."
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.public_http.id]
  }

  egress {
    description = "Allow outbound traffic."
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = var.private_http_sg_name
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}
