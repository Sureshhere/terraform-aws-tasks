data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = ["${var.project_id}-vpc"]
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.existing.id]
  }

  filter {
    name   = "map-public-ip-on-launch"
    values = ["true"]
  }
}

data "aws_subnet" "public" {
  id = sort(data.aws_subnets.public.ids)[0]
}

data "aws_security_group" "ssh" {
  filter {
    name   = "group-name"
    values = [var.aws_security_group_name]
  }

  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.existing.id]
  }
}

locals {
  amazon_linux_ami_id = "ami-0d6e34c14757a048b"
}

resource "aws_instance" "main" {
  ami                         = local.amazon_linux_ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.main.key_name
  subnet_id                   = data.aws_subnet.public.id
  vpc_security_group_ids      = [data.aws_security_group.ssh.id]
  associate_public_ip_address = true

  tags = {
    Name    = var.aws_instance_name
    Project = "epam-tf-lab"
    ID      = var.project_id
  }
}
