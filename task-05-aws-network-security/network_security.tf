resource "aws_security_group" "ssh" {
  name        = "cmtr-nl4ibdbd-ssh-sg"
  description = "Allow SSH and ICMP from approved IP ranges."
  vpc_id      = var.vpc_id

  tags = {
    Project = var.project_id
  }
}

resource "aws_security_group_rule" "ssh_ingress" {
  type              = "ingress"
  security_group_id = aws_security_group.ssh.id
  protocol          = "tcp"
  from_port         = 22
  to_port           = 22
  cidr_blocks       = var.allowed_ip_range
  description       = "SSH from approved IP ranges"
}

resource "aws_security_group_rule" "ssh_icmp_ingress" {
  type              = "ingress"
  security_group_id = aws_security_group.ssh.id
  protocol          = "icmp"
  from_port         = -1
  to_port           = -1
  cidr_blocks       = var.allowed_ip_range
  description       = "All ICMP from approved IP ranges"
}

resource "aws_security_group" "public_http" {
  name        = "cmtr-nl4ibdbd-public-http-sg"
  description = "Allow HTTP and ICMP from approved IP ranges."
  vpc_id      = var.vpc_id

  tags = {
    Project = var.project_id
  }
}

resource "aws_security_group_rule" "public_http_ingress" {
  type              = "ingress"
  security_group_id = aws_security_group.public_http.id
  protocol          = "tcp"
  from_port         = 80
  to_port           = 80
  cidr_blocks       = var.allowed_ip_range
  description       = "HTTP from approved IP ranges"
}

resource "aws_security_group_rule" "public_http_icmp_ingress" {
  type              = "ingress"
  security_group_id = aws_security_group.public_http.id
  protocol          = "icmp"
  from_port         = -1
  to_port           = -1
  cidr_blocks       = var.allowed_ip_range
  description       = "All ICMP from approved IP ranges"
}

resource "aws_security_group" "private_http" {
  name        = "cmtr-nl4ibdbd-private-http-sg"
  description = "Allow HTTP and ICMP from the public HTTP security group."
  vpc_id      = var.vpc_id

  tags = {
    Project = var.project_id
  }
}

resource "aws_security_group_rule" "private_http_ingress" {
  type                     = "ingress"
  security_group_id        = aws_security_group.private_http.id
  protocol                 = "tcp"
  from_port                = 8080
  to_port                  = 8080
  source_security_group_id = aws_security_group.public_http.id
  description              = "HTTP from instances in the public HTTP security group"
}

resource "aws_security_group_rule" "private_http_icmp_ingress" {
  type                     = "ingress"
  security_group_id        = aws_security_group.private_http.id
  protocol                 = "icmp"
  from_port                = -1
  to_port                  = -1
  source_security_group_id = aws_security_group.public_http.id
  description              = "ICMP from instances in the public HTTP security group"
}

resource "aws_network_interface_sg_attachment" "public_ssh" {
  security_group_id    = aws_security_group.ssh.id
  network_interface_id = data.aws_instance.public.network_interface_id
}

resource "aws_network_interface_sg_attachment" "public_http" {
  security_group_id    = aws_security_group.public_http.id
  network_interface_id = data.aws_instance.public.network_interface_id
}

resource "aws_network_interface_sg_attachment" "private_ssh" {
  security_group_id    = aws_security_group.ssh.id
  network_interface_id = data.aws_instance.private.network_interface_id
}

resource "aws_network_interface_sg_attachment" "private_http" {
  security_group_id    = aws_security_group.private_http.id
  network_interface_id = data.aws_instance.private.network_interface_id
}

data "aws_instance" "public" {
  instance_id = var.public_instance_id
}

data "aws_instance" "private" {
  instance_id = var.private_instance_id
}
