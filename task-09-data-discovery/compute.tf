locals {
  instance_name = "${var.project_id}-instance"
}

resource "aws_instance" "instance" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [data.aws_security_group.existing.id]
  tags = {
    Name    = local.instance_name
    Project = var.project_id
  }
}